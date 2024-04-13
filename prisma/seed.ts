import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

//password = 123456

async function main() {
  await prisma.user.upsert({
    where: { email: 'brunasp@gmail.com' },
    update: {},
    create: {
      fullName: 'Bruna Platt',
      email: 'brunasp@gmail.com',
      password: '123456@',
      roles: 'administrator',
    },
  });
}
main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
