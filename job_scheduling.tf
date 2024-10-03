# Resume Fabric capacity a 9am mon-fri. start_time is on UTP timezone -2hours

module "job_schedule_01" {

  source           = "./modules/automation-job-schedule"
  schedule_name    = "FabricResume Mon-Fri 9am"
  runbook_name     = module.automation_runbook_resume_01.name
  environment      = var.environment
  rg_name          = var.rg_name
  aut_account_name = var.aut_account_name
  frequency        = "Week"
  interval         = 1
  start_time       = "${substr(timeadd(timestamp(), "24h"), 0, 10)}T07:00:00Z"
  timezone         = "Europe/Amsterdam"
  week_days        = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  description      = "Resume Fabric capacity a 9am mon-fri. start_time is on UTP timezone -2hours"

}

# Suspend Fabric capacity a 7pm mon-fri. start_time is on UTP timezone -2hours

module "job_schedule_02" {

  source           = "./modules/automation-job-schedule"
  schedule_name    = "FabricSuspend Mon-Fri 7pm"
  runbook_name     = module.automation_runbook_suspend_01.name
  environment      = var.environment
  rg_name          = var.rg_name
  aut_account_name = var.aut_account_name
  frequency        = "Week"
  interval         = 1
  start_time       = "${substr(timeadd(timestamp(), "2h"), 0, 10)}T17:00:00Z"
  timezone         = "Europe/Amsterdam"
  week_days        = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  description      = "Suspend Fabric capacity a 7pm mon-fri. start_time is on UTP timezone -2hours"

}

# Suspend Fabric capacity a 12pm sat-sun. start_time is on UTP timezone -2hours

module "job_schedule_03" {

  source           = "./modules/automation-job-schedule"
  schedule_name    = "FabricSuspend Sat-Sun 12pm"
  runbook_name     = module.automation_runbook_suspend_01.name
  environment      = var.environment
  rg_name          = var.rg_name
  aut_account_name = var.aut_account_name
  frequency        = "Week"
  interval         = 1
  start_time       = "${substr(timeadd(timestamp(), "24h"), 0, 10)}T10:00:00Z"
  timezone         = "Europe/Amsterdam"
  week_days        = ["Saturday", "Sunday"]
  description      = "Suspend Fabric capacity a 12pm sat-sun. start_time is on UTP timezone -2hours"

}

# Resume Fabric capacity a 9am sat-sun. start_time is on UTP timezone -2hours

module "job_schedule_04" {

  source           = "./modules/automation-job-schedule"
  schedule_name    = "FabricResume Sat-Sun 9am"
  runbook_name     = module.automation_runbook_resume_01.name
  environment      = var.environment
  rg_name          = var.rg_name
  aut_account_name = var.aut_account_name
  frequency        = "Week"
  interval         = 1
  start_time       = "${substr(timeadd(timestamp(), "24h"), 0, 10)}T07:00:00Z"
  timezone         = "Europe/Amsterdam"
  week_days        = ["Saturday", "Sunday"]
  description      = "Resume Fabric capacity a 9am sat-sun. start_time is on UTP timezone -2hours"

}