grammar CommitQuery;

query: criteria+;

criteria: revisionCriteria | before | after | committer | author | path | message;

revisionCriteria
	: revision						# SingleRevision
	| EXCLUDE revision 				# RevisionExclusion
	| revision Range revision		# RevisionRange
	;

revision: (BRANCH|TAG|ID) Value;

before: BEFORE Value;

after: AFTER Value;

committer: COMMITTER Value;

author: AUTHOR Value;

path: PATH Value;

message: MESSAGE Value;

BRANCH: 'branch';
TAG: 'tag';
ID: 'id';
BEFORE: 'before';
AFTER: 'after';
MESSAGE: 'message';
COMMITTER: 'committer';
AUTHOR: 'author';
PATH: 'path';
EXCLUDE: '^';
LPAREN: '(';
RPAREN: ')';

Range: '..' | '...';
Value: LPAREN ([a-z])+? RPAREN;

fragment
ESCAPE: '\\'[()\\];

WS: [ \t\r\n]+ -> skip;