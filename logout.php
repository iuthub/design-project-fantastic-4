<?php

session_start();
session_destroy();

header('Refresh: 0.01; URL = index.php');

