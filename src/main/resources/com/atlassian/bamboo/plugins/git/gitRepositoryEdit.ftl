[@ui.bambooSection]
    [@ww.textfield labelKey='repository.git.repositoryUrl' name='repository.git.repositoryUrl' required='true' helpKey='git.fields' /]
    [@ww.textfield labelKey='repository.git.branch' name='repository.git.branch' /]

    [#if buildConfiguration.getString('repository.git.ssh.key')?has_content]
        [@ww.checkbox labelKey='repository.git.ssh.key.change' toggle='true' name='temporary.git.ssh.key.change' /]
        [@ui.bambooSection dependsOn='temporary.git.ssh.key.change' showOn='true']
            [@ww.file labelKey='repository.git.ssh.key' name='temporary.git.ssh.keyfile' /]
        [/@ui.bambooSection]
    [#else]
        [@ww.hidden name='temporary.git.ssh.key.change' value='true' /]
        [@ww.file labelKey='repository.git.ssh.key' name='temporary.git.ssh.keyfile' /]
    [/#if]

    [#if buildConfiguration.getString('repository.git.ssh.passphrase')?has_content]
        [@ww.checkbox labelKey='repository.passphrase.change' toggle='true' name='temporary.git.ssh.passphrase.change' /]
        [@ui.bambooSection dependsOn='temporary.git.ssh.passphrase.change' showOn='true']
            [@ww.password labelKey='repository.git.ssh.passphrase' name='temporary.git.ssh.passphrase' /]
        [/@ui.bambooSection]
    [#else]
        [@ww.hidden name='temporary.git.ssh.passphrase.change' value="true" /]
        [@ww.password labelKey='repository.git.ssh.passphrase' name='temporary.git.ssh.passphrase' /]
    [/#if]

[/@ui.bambooSection]