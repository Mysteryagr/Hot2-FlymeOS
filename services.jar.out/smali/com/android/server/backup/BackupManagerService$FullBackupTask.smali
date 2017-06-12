.class abstract Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FullBackupTask"
.end annotation


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 3603
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3604
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3603
    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3632
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3631
    :cond_0
    :goto_0
    return-void

    .line 3635
    :catch_0
    move-exception v0

    .line 3636
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3620
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3619
    :cond_0
    :goto_0
    return-void

    .line 3624
    :catch_0
    move-exception v0

    .line 3625
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method final sendStartBackup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3609
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3611
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3608
    :cond_0
    :goto_0
    return-void

    .line 3612
    :catch_0
    move-exception v0

    .line 3613
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method
