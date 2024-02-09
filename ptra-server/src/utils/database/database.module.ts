import { Global, Module } from '@nestjs/common';
import { IDatabaseService, MockDatabaseService } from './database.service';

@Global()
@Module({
  providers: [
    {
      provide: IDatabaseService,
      useClass: MockDatabaseService,
    },
  ],
  exports: [IDatabaseService],
})
export class DatabaseModule {}
