#!/usr/local/bin/fish

for app in (brew cask list)
    set -l latest (brew cask info $app | awk -F: 'NR==1{print substr($2, 2)}')
    set -l current (ls -1 /usr/local/Caskroom/$app | awk -F/ 'END{print $1}')

    if test $latest = latest
        echo Warning: Can not get the latest version. Because, Cask \'$app\' version is \'latest\'.
        continue
    else if test $current = $latest
        continue
    end

    echo $app\: $current '->' $latest
    if test -z '$cask_app_with_update'
        set -l cask_app_with_update $app
    else
        set -l cask_app_with_update $cask_app_with_update $app
    end
end

if test -n '$cask_app_with_update'
    echo $cask_app_with_update
else
    echo 'Alrady up-to-date.'
end
