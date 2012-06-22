namespace :db do

 desc "Copy production database to local"
 task :sync => :environment do
   system 'mongodump -h staff.mongohq.com:10082 -d app610264 -u heroku -p ce0576001c2e4526e2fcde728a78cc37 -o db/backups/'
   system 'mongorestore -h localhost --drop -d bef_development db/backups/app610264/'
 end

end
