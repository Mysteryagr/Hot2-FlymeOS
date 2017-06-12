.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .locals 4

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 595
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap9(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    return-void

    .line 596
    :catchall_0
    move-exception v2

    .line 597
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    throw v2
.end method

.method public dream()V
    .locals 4

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 559
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap10(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    return-void

    .line 560
    :catchall_0
    move-exception v2

    .line 561
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump DreamManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    const-string/jumbo v3, ", uid="

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    return-void

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap7(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    return-void

    .line 485
    :catchall_0
    move-exception v2

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 610
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap8(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    return-void

    .line 611
    :catchall_0
    move-exception v2

    .line 612
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 518
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 521
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 523
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    return-object v3

    .line 524
    :catchall_0
    move-exception v3

    .line 525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 492
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 495
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    return-object v3

    .line 498
    :catchall_0
    move-exception v3

    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    throw v3
.end method

.method public isDozing()Z
    .locals 4

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 547
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    return v2

    .line 548
    :catchall_0
    move-exception v2

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    throw v2
.end method

.method public isDreaming()Z
    .locals 4

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 535
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v2

    .line 536
    :catchall_0
    move-exception v2

    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 505
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 508
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap11(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    return-void

    .line 511
    :catchall_0
    move-exception v3

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v3
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 625
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->-wrap12(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    return-void

    .line 626
    :catchall_0
    move-exception v2

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 626
    throw v2
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 635
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 640
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap14(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    return-void

    .line 641
    :catchall_0
    move-exception v2

    .line 642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    throw v2
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "dream"    # Landroid/content/ComponentName;

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "dream must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v5, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v4, v5}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 573
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 574
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_1

    .line 576
    const-string/jumbo v4, "DreamManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 578
    const-string/jumbo v6, ", currentUserId="

    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 581
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 583
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->-wrap17(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    return-void

    .line 584
    :catchall_0
    move-exception v4

    .line 585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    throw v4
.end method
