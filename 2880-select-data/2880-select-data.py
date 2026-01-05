import pandas as pd

def selectData(students: pd.DataFrame) -> pd.DataFrame:
    target_id=101
    return students[students.student_id == 101][["name", "age"]]