import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

//password = 123456

async function main() {
  await prisma.user.upsert({
    where: { email: 'fulanodasilva@gmail.com' },
    update: {},
    create: {
      fullName: 'Fulano da Silva',
      email: 'fulanodasilva@gmail.com',
      password: '12345@',
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