from flask import Flask, request, jsonify
import pandas as pd

app = Flask(__name__)

courses = {
    'ai and ds': 1,
    'applied electronics and instr': 2,
    'btech(agricultyre)': 3,
    'ai and ml': 4,
    'btech agriculture engineering': 5,
    'aeronautical eng': 6,
    'automobile eng': 7,
    'bio tech and biochemical': 9,
    'cs and business system': 10,
    'biomed eng': 11,
    'bio technology': 12,
    'c eng and application': 13,
    'computer engineering': 14,
    'civil engineering': 15,
    'cs and design': 16,
    'cheical eng': 17,
    'cse(ai and ml)': 18,
    'cse(ds)': 19,
    'cyber security': 20,
    'cse': 21,
    'cse(ai)': 22,
    'cs and business system': 23,
    'civil and environmental': 24,
    'cse(cyber security)': 26,
    'dairy': 27,
    'electronics and biomed': 28,
    'electronics and communication': 29,
    'electrical end electronic': 30,
    'electronics and instrumentation': 31,
    'electrical and ce': 32,
    'electronics and ce': 33,
    'safety and fire': 34,
    'food tech': 35,
    'cse(iot)': 36,
    'instrumentation and control': 37,
    'industrial': 38,
    'it': 39,
    'mech eng(automobile)': 40,
    'mech': 41,
    'metallurgy': 42,
    'mechatronics': 43,
    'productionn eng': 44,
    'polymer': 45,
    'printing': 46,
    'robotics': 47,
    'naval': 48,
    'architecture': 49
}

types = {
    3: 'Government',
    2: 'Private',
    1: 'govt aided'
}
pranklist = pd.read_excel('predicted_cutoff_ranks_2024_new_2 (5).xlsx')
college_details = pd.read_excel('2022.xlsx')
print("Column names in pranklist:", pranklist.columns)
print("Column names in college_details:", college_details.columns)
print("First few rows in pranklist:", pranklist.head())
print("First few rows in college_details:", college_details.head())

@app.route('/get_colleges', methods=['GET'])
def get_colleges():
    rank_category = request.args.get('rank_category')
    course_name = request.args.get('course_name').lower()
    input_rank = request.args.get('rank', type=int)

    course_id = courses.get(course_name)
    if course_id is None:
        return jsonify({'error': 'Course not found.'}), 400
    filtered_rank_list = pranklist[pranklist['CID'] == course_id]
    matched_colleges = []

    for index, row in filtered_rank_list.iterrows():
        college_name = row['Name of college']
        cutoff_rank = row[rank_category]
        if cutoff_rank == 0 or input_rank <= cutoff_rank:
            matched_colleges.append(college_name)
    print("Matched colleges:", matched_colleges)
    college_name_column = 'Name of College'

    filtered_college_details = college_details[
        (college_details[college_name_column].isin(matched_colleges)) & (college_details['CID'] == course_id)
    ]

    matched_college_names = filtered_college_details['Unnamed: 1'].tolist()
    matched_college_types = [types[type_id] for type_id in filtered_college_details['Type']]

    matched_colleges_info = list(zip(matched_college_names, matched_college_types))

    result = []
    for college_info in matched_colleges_info:
        result.append({
            'College Name': college_info[0],
            'College Type': college_info[1]
        })

    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
