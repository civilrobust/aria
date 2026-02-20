import sqlite3
db = sqlite3.connect(r'E:\Claude\Dev\aria\aria.db')
total = db.execute('SELECT COUNT(*) FROM studies').fetchone()[0]
critical = db.execute('SELECT COUNT(*) FROM studies WHERE critical_flag=1').fetchone()[0]
print(f'Total studies: {total}, Critical: {critical}, Pct: {round(critical/total*100)}%')
db.close()