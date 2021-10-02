node default {
    notify{"checkpoint_1":
        message => "CHECKPOINT_1 - Applying default block"
    }
    include ['base::config','base::install']
} 