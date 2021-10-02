class prefs::config inherits prefs {

    notify{"print the prefs":

        message => "

            FAVOURITE COLOR => ${color}
            FAVOURITE CAR   => ${car}

        "

    }

}