const { PrismaClient } = require('@prisma/client')
const { Client: BaseClient } = require('discord.js')

class Client extends BaseClient {
  /**
   * @param {import('discord.js').ClientOptions} clientOptions
   * @param {import('@prisma/client').Prisma.PrismaClientOptions} prismaOptions
   */
  constructor (clientOptions, prismaOptions) {
    super(clientOptions)

    this.prisma = new PrismaClient(prismaOptions)

    this.on('ready', () => this.prisma.$connect())
    this.on('disconnect', () => this.prisma.$disconnect())
  }
}

module.exports = Client
