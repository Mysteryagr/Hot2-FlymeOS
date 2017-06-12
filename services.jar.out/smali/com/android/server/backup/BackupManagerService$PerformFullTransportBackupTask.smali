.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v3, 0x0

    .line 4010
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4013
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4014
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 4015
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4016
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4017
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4018
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4020
    array-length v4, p3

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p3, v3

    .line 4022
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4023
    const/16 v6, 0x40

    .line 4022
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4024
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 4025
    const-string/jumbo v5, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4024
    if-eqz v5, :cond_1

    .line 4020
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4033
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    .line 4034
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 4041
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 4050
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4051
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 4052
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4012
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4244
    if-eqz p1, :cond_1

    .line 4245
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 4246
    aget-object v1, p1, v3

    .line 4247
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    .line 4249
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4254
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 4255
    aget-object v1, p1, v5

    .line 4256
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    .line 4258
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4243
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    .line 4250
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 4251
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4259
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 4260
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 24

    .prologue
    .line 4064
    const/4 v13, 0x0

    .line 4067
    .local v13, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v20, 0x0

    .line 4070
    .local v20, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v10, 0x0

    .line 4073
    .local v10, "backoff":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v3, :cond_2

    .line 4083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap4(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 4084
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v6, :cond_5

    .line 4085
    const-string/jumbo v3, "PFTBT"

    const-string/jumbo v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_0

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_1

    .line 4238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4086
    :cond_1
    return-void

    .line 4076
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "full backup requested but e="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4077
    const-string/jumbo v21, " p="

    .line 4076
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v21, v0

    .line 4076
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4077
    const-string/jumbo v21, "; ignoring"

    .line 4076
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_3

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_4

    .line 4238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4080
    :cond_4
    return-void

    .line 4229
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4090
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4091
    .local v8, "N":I
    const/4 v15, 0x0

    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v20    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v15, "i":I
    :goto_0
    if-ge v15, v8, :cond_14

    .line 4092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 4094
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Initiating full-data transport backup of "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4095
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4094
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4097
    const/16 v4, 0xb18

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4100
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v20

    .line 4104
    .local v20, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    .line 4103
    invoke-interface {v6, v5, v3}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v19

    .line 4105
    .local v19, "result":I
    if-nez v19, :cond_9

    .line 4108
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4109
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v20, v4

    .line 4112
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 4113
    .local v13, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4115
    .local v7, "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/4 v3, 0x1

    aget-object v4, v13, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;Ljava/util/concurrent/CountDownLatch;)V

    .line 4118
    .local v2, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4119
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-object v3, v13, v4

    .line 4123
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "package-backup-bridge"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4127
    new-instance v16, Ljava/io/FileInputStream;

    .line 4128
    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 4127
    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4129
    .local v16, "in":Ljava/io/FileInputStream;
    new-instance v18, Ljava/io/FileOutputStream;

    .line 4130
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 4129
    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4131
    .local v18, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x2000

    new-array v9, v3, [B

    .line 4132
    .local v9, "buffer":[B
    const/16 v17, 0x0

    .line 4134
    .local v17, "nRead":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_b

    .line 4136
    const-string/jumbo v3, "PFTBT"

    const-string/jumbo v4, "Full backup task told to stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_d

    .line 4154
    const/16 v19, -0x3e8

    .line 4155
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 4171
    :cond_7
    :goto_2
    if-eqz v19, :cond_8

    .line 4172
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4173
    const-string/jumbo v21, " backing up "

    .line 4172
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4173
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4172
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_8
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v10

    .line 4180
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Transport suggested backoff="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_a

    .line 4188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 4188
    move-wide/from16 v0, v22

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4192
    :cond_a
    const/16 v3, -0x3ea

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    .line 4194
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Transport rejected backup of "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4195
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4194
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4196
    const-string/jumbo v21, ", skipping"

    .line 4194
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4199
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v3, v21

    const-string/jumbo v4, "transport rejected"

    const/16 v21, 0x1

    aput-object v4, v3, v21

    .line 4198
    const/16 v4, 0xb19

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4211
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4212
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4213
    const/4 v5, 0x0

    .line 4091
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 4140
    .restart local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "buffer":[B
    .restart local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "nRead":I
    .restart local v18    # "out":Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .line 4144
    if-lez v17, :cond_c

    .line 4145
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v9, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4146
    move/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v19

    .line 4148
    :cond_c
    if-lez v17, :cond_6

    if-nez v19, :cond_6

    goto/16 :goto_1

    .line 4161
    :cond_d
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v14

    .line 4162
    .local v14, "finishResult":I
    if-nez v19, :cond_7

    .line 4163
    move/from16 v19, v14

    goto/16 :goto_2

    .line 4201
    .end local v2    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v7    # "runnerLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "buffer":[B
    .end local v13    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "finishResult":I
    .end local v16    # "in":Ljava/io/FileInputStream;
    .end local v17    # "nRead":I
    .end local v18    # "out":Ljava/io/FileOutputStream;
    :cond_e
    if-eqz v19, :cond_11

    .line 4202
    const-string/jumbo v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Transport failed; aborting backup: "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xb1a

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_f

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_10

    .line 4238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4204
    :cond_10
    return-void

    .line 4229
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4208
    :cond_11
    :try_start_6
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4207
    const/16 v4, 0xb1b

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_3

    .line 4219
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .end local v19    # "result":I
    .end local v20    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v12

    .line 4220
    .local v12, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "PFTBT"

    const-string/jumbo v4, "Exception trying full transport backup"

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_12

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_13

    .line 4238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4062
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_4
    return-void

    .line 4217
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "N":I
    .restart local v15    # "i":I
    :cond_14
    :try_start_9
    const-string/jumbo v3, "PFTBT"

    const-string/jumbo v4, "Full backup completed."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v3, :cond_15

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v3, :cond_13

    .line 4238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_4

    .line 4229
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3

    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "N":I
    .end local v15    # "i":I
    .restart local v12    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4221
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v3

    .line 4222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4223
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v4, :cond_16

    .line 4226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v4}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4229
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4230
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    monitor-exit v4

    .line 4233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4237
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v4, :cond_17

    .line 4238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v10, v11}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4221
    :cond_17
    throw v3

    .line 4229
    :catchall_6
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4057
    return-void
.end method
