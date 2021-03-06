# TO-DO: v1.0

- [x] Setup base application
- [x] Setup Webpack as asset driver
- [x] Create base Models + Migrations
- [x] Create basic styles, Logo
- [ ] Setup CI/CD
  - [x] Setup CI workflow
  - [ ] Setup Deployment targets
- [ ] Create basic Docs
- [ ] Leverage cache to speed up container set-up time in CI/CD
- [ ] Can Manage Evaluation Criteria
  - [x] Enable CRUD in the GUI
  - [ ] Add validation to prevent blank entries
- [ ] Can Manage Projects
  - [ ] Enable CRUD in the GUI
- [ ] Can manage Evaluation Programs
  - [ ] Enable CRUD in the GUI
  - [ ] Manage ProgramCriteria
  - [ ] Assign Projects
- [ ] Can manage Users and Roles
  - [ ] Can invite new Users
  - [ ] Can assign Roles to Users
  - [ ] Can assign Users as Evaluators in a per-Program basis
- [ ] Can create and edit evaluations for each Project per Program
  - [ ] Every evaluation automatically has the criteria assigned to the Program, and Users (Evluators) can Assign Scores per-Criterion.
  - [ ] Establish and enforce validations for consistency
- [ ] Can see Results
  - [ ] Can see each Project's results per-Program
    - [ ] Enable and auto-calculate Project-Program Summaries
  - [ ] Can see an overview of results per-Program
    - [ ] Per-Program overview dashboards update in real-time (ActionCable)
  - [ ] Establish and enforce rules to prevent results from changing when they shouldn't:
    - [ ] When a Program has ended
    - [ ] Prevent duplicate evaluations per-Project, per-User if `@evaluation_program.program_type.competition?`
    - [ ] What to do with `@evaluation_program.program_type.project_follow_up?`
- [ ] Can search for Projects and Programs using the Searchbar
- [ ] Write domain-specific docs for people to manage their own implementations of Evaluarium