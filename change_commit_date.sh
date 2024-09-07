# A script that changes the commit date of a older commit without effecting the dates of other commits.
# Replace `xxx` with your full commit id and  GIT_AUTHOR_DATE and GIT_COMMITTER_DATE with the date which you want the commit to be.

git filter-branch -f --env-filter '

# Define your commits and their new dates here
if [ "$GIT_COMMIT" = "xxx" ]; then
    export GIT_AUTHOR_DATE="2014-08-31T12:00:00"
    export GIT_COMMITTER_DATE="2014-08-31T12:00:00"
elif [ "$GIT_COMMIT" = "xxx" ]; then
    export GIT_AUTHOR_DATE="2014-01-01T09:30:00"
    export GIT_COMMITTER_DATE="2014-01-01T09:30:00"
elif [ "$GIT_COMMIT" = "xxx" ]; then
    export GIT_AUTHOR_DATE="2014-05-15T18:45:00"
    export GIT_COMMITTER_DATE="2014-05-15T18:45:00"
fi

' HEAD
