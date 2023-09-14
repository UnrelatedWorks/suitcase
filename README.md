# suitcase
A community based zero-trust solution to never loose your most valuable data. (super duper early pre-alpha test state)

## main idea
Creating a no-trust system that allows everyone to have a decentralized archive or suitcase. This is for your most important and crucial files. Photos, reminders, hints etc...

## Concept 
1. The user specifies a folder
2. The user specifies a password
3. The suitcases gets packed: zip -9
4. The suitcases gets locked: openssl enc -aes-256-ocb
5. The ticket for the suitcase is created: ctorrent -t -u "udp://tracker.opentrackr.org:1337/announce"
6. The user shares the ticket with their local community. 

## problems
Even while using best AES-Encryption, a 100% security cannot be guranteed. Use password hints instead of passwords. 
While most laws do not hold you accountable for encrypted data stored on your server, local laws may vary. 

## restrictions
- Max size = 1 GB 
- Each individual can only ship one suitcase
- Child pornography or other shit you wouldn't want on your PC. 

## help wanted
### peers
While I will try to store as many suitcases as possible, infrastructure is limited. 
Companies who want to flex their storage speed and love for community are encuraged to do so. 

### solution solvers 
- Double submissions, auth-method needed
- Faster encryption
- Cron enryption and update of old suitcases
- RSS feed or custom tracker to auto-pick up new suitcases
