.class public Lorg/slim/preference/dslv/ActionListViewSettings;
.super Landroid/app/ListFragment;
.source "ActionListViewSettings.java"

# interfaces
.implements Lorg/slim/utils/ShortcutPickerHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/preference/dslv/ActionListViewSettings$ViewHolder;,
        Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;,
        Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;,
        Lorg/slim/preference/dslv/ActionListViewSettings$1;,
        Lorg/slim/preference/dslv/ActionListViewSettings$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ACTION_NUMBER:I = 0x5

.field private static final DLG_BACK_WARNING_DIALOG:I = 0x6

.field private static final DLG_DELETION_NOT_ALLOWED:I = 0x2

.field private static final DLG_HOME_WARNING_DIALOG:I = 0x5

.field private static final DLG_RESET_TO_DEFAULT:I = 0x4

.field private static final DLG_SHOW_ACTION_DIALOG:I = 0x0

.field private static final DLG_SHOW_HELP_SCREEN:I = 0x3

.field private static final DLG_SHOW_ICON_PICKER:I = 0x1

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_HELP:I = 0x1

.field private static final MENU_RESET:I = 0x3

.field private static final NAV_BAR:I = 0x0

.field public static final REQUEST_PICK_CUSTOM_ICON:I = 0x3e8


# instance fields
.field private mActionConfig:Lorg/slim/action/ActionConfig;

.field private mActionConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

.field private mActionDialogEntries:[Ljava/lang/String;

.field private mActionDialogValues:[Ljava/lang/String;

.field private mActionEntriesKey:Ljava/lang/String;

.field private mActionMode:I

.field private mActionValuesKey:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdditionalFragment:Ljava/lang/String;

.field private mAdditionalFragmentAttached:Z

.field private mDisableDeleteLastEntry:Z

.field private mDisableDoubleTap:Z

.field private mDisableIconPicker:Z

.field private mDisableLongpress:Z

.field private mDisableMessage:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mImageTmp:Ljava/io/File;

.field private mMaxAllowedActions:I

.field private mPendingDoubleTap:Z

.field private mPendingIndex:I

.field private mPendingLongpress:Z

.field private mPendingNewAction:Z

.field private mPicker:Lorg/slim/utils/ShortcutPickerHelper;

.field private mTempActionConfig:Lorg/slim/action/ActionConfig;

.field private mUseAppPickerOnly:Z

.field private mUseFullAppsOnly:Z

.field private onDrop:Lorg/slim/preference/dslv/DragSortListView$DropListener;

.field private onRemove:Lorg/slim/preference/dslv/DragSortListView$RemoveListener;


# direct methods
.method static synthetic -get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get11(Lorg/slim/preference/dslv/ActionListViewSettings;)I
    .locals 1

    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    return v0
.end method

.method static synthetic -get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    return-object v0
.end method

.method static synthetic -get13(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/action/ActionConfig;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mTempActionConfig:Lorg/slim/action/ActionConfig;

    return-object v0
.end method

.method static synthetic -get14(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    return v0
.end method

.method static synthetic -get15(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    return v0
.end method

.method static synthetic -get2(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionDialogEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionDialogValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lorg/slim/preference/dslv/ActionListViewSettings;)I
    .locals 1

    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    return v0
.end method

.method static synthetic -get5(Lorg/slim/preference/dslv/ActionListViewSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get6(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    return v0
.end method

.method static synthetic -get7(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableDoubleTap:Z

    return v0
.end method

.method static synthetic -get8(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableIconPicker:Z

    return v0
.end method

.method static synthetic -get9(Lorg/slim/preference/dslv/ActionListViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableLongpress:Z

    return v0
.end method

.method static synthetic -set0(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingDoubleTap:Z

    return p1
.end method

.method static synthetic -set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I
    .locals 0

    iput p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    return p1
.end method

.method static synthetic -set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    return p1
.end method

.method static synthetic -set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    return p1
.end method

.method static synthetic -set4(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;)Lorg/slim/action/ActionConfig;
    .locals 0

    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mTempActionConfig:Lorg/slim/action/ActionConfig;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getConfig()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/slim/preference/dslv/ActionListViewSettings;->addNewAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;Z)V
    .locals 0
    .param p1, "action"    # Lorg/slim/action/ActionConfig;
    .param p2, "deleteShortCutIcon"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/slim/preference/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lorg/slim/action/ActionConfig;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "actionConfigs"    # Ljava/util/ArrayList;
    .param p2, "reset"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/slim/preference/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "which"    # I
    .param p3, "longpress"    # Z
    .param p4, "doubletap"    # Z
    .param p5, "newAction"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDialogInner(IIZZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/slim/preference/dslv/ActionListViewSettings;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "longpress"    # Z
    .param p6, "doubletap"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/slim/preference/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 139
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$1;

    invoke-direct {v0, p0}, Lorg/slim/preference/dslv/ActionListViewSettings$1;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V

    .line 138
    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->onDrop:Lorg/slim/preference/dslv/DragSortListView$DropListener;

    .line 152
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$2;

    invoke-direct {v0, p0}, Lorg/slim/preference/dslv/ActionListViewSettings$2;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V

    .line 151
    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->onRemove:Lorg/slim/preference/dslv/DragSortListView$RemoveListener;

    .line 80
    return-void
.end method

.method private addNewAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const v2, 0x37040012

    const/4 v8, 0x0

    .line 571
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->checkForDuplicateMainNavActions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    new-instance v0, Lorg/slim/action/ActionConfig;

    .line 576
    const-string/jumbo v3, "**null**"

    .line 577
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    const-string/jumbo v5, "**null**"

    .line 579
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 580
    const-string/jumbo v7, "empty"

    move-object v1, p1

    move-object v2, p2

    .line 574
    invoke-direct/range {v0 .. v7}, Lorg/slim/action/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v0, "actionConfig":Lorg/slim/action/ActionConfig;
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 583
    invoke-direct {p0, v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 584
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v8}, Lorg/slim/preference/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    .line 570
    return-void
.end method

.method private checkForDuplicateMainNavActions(Ljava/lang/String;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 486
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v2, v1}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slim/action/ActionConfig;

    .line 487
    .local v0, "actionConfig":Lorg/slim/action/ActionConfig;
    invoke-virtual {v0}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 489
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3704002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 491
    return v5

    .line 485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "actionConfig":Lorg/slim/action/ActionConfig;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private deleteIconFileIfPresent(Lorg/slim/action/ActionConfig;Z)V
    .locals 4
    .param p1, "action"    # Lorg/slim/action/ActionConfig;
    .param p2, "deleteShortCutIcon"    # Z

    .prologue
    .line 498
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/slim/action/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "oldImage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 502
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "oldImage":Ljava/io/File;
    invoke-virtual {p1}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".*?hasExtraIcon="

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v0    # "oldImage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 497
    :cond_1
    return-void
.end method

.method private getConfig()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    packed-switch v0, :pswitch_data_0

    .line 611
    const/4 v0, 0x0

    return-object v0

    .line 591
    :pswitch_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionValuesKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionEntriesKey:Ljava/lang/String;

    .line 590
    invoke-static {v0, v1, v2}, Lorg/slim/action/ActionHelper;->getNavBarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private loadAdditionalFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 353
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    .local v0, "classAdditionalFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 357
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 358
    const v4, 0x3702000c

    .line 357
    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 359
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 360
    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v0    # "classAdditionalFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setConfig(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/slim/action/ActionConfig;>;"
    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    packed-switch v0, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 617
    :pswitch_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lorg/slim/action/ActionHelper;->setNavBarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showDialogInner(IIZZZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "which"    # I
    .param p3, "longpress"    # Z
    .param p4, "doubletap"    # Z
    .param p5, "newAction"    # Z

    .prologue
    .line 749
    invoke-static {p1, p2, p3, p4, p5}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->newInstance(IIZZZ)Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    move-result-object v0

    .line 750
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 751
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method private showDisableMessage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    return-void

    .line 512
    :cond_1
    if-eqz p1, :cond_2

    .line 513
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    :goto_0
    return-void

    .line 515
    :cond_2
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "longpress"    # Z
    .param p6, "doubletap"    # Z

    .prologue
    const/4 v2, 0x0

    .line 450
    if-nez p5, :cond_0

    if-eqz p6, :cond_2

    .line 454
    :cond_0
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, p4}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slim/action/ActionConfig;

    .line 455
    .local v0, "actionConfig":Lorg/slim/action/ActionConfig;
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 457
    if-nez p5, :cond_1

    if-eqz p6, :cond_3

    .line 461
    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    .line 462
    invoke-virtual {v0, p3}, Lorg/slim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 478
    :goto_1
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {v1, v0, p4}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->insert(Ljava/lang/Object;I)V

    .line 479
    invoke-direct {p0, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 480
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->setConfig(Ljava/util/ArrayList;Z)V

    .line 448
    return-void

    .line 450
    .end local v0    # "actionConfig":Lorg/slim/action/ActionConfig;
    :cond_2
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/ActionListViewSettings;->checkForDuplicateMainNavActions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    return-void

    .line 458
    .restart local v0    # "actionConfig":Lorg/slim/action/ActionConfig;
    :cond_3
    invoke-direct {p0, v0, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lorg/slim/action/ActionConfig;Z)V

    goto :goto_0

    .line 464
    :cond_4
    if-eqz p5, :cond_5

    .line 465
    invoke-virtual {v0, p1}, Lorg/slim/action/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p2}, Lorg/slim/action/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_5
    if-eqz p6, :cond_6

    .line 468
    invoke-virtual {v0, p1}, Lorg/slim/action/ActionConfig;->setDoubleTapAction(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p2}, Lorg/slim/action/ActionConfig;->setDoubleTapActionDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :cond_6
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->deleteIconFileIfPresent(Lorg/slim/action/ActionConfig;Z)V

    .line 472
    invoke-virtual {v0, p1}, Lorg/slim/action/ActionConfig;->setClickAction(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p2}, Lorg/slim/action/ActionConfig;->setClickActionDescription(Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "empty"

    invoke-virtual {v0, v1}, Lorg/slim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 410
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 411
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 412
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/slim/utils/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 444
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 409
    return-void

    .line 413
    :cond_2
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 416
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string/jumbo v1, ".slim"

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string/jumbo v1, "icons"

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v7, "folder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 427
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    const-string/jumbo v1, "shortcut_"

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 427
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    const-string/jumbo v1, ".png"

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v8, "image":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "path":Ljava/lang/String;
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 431
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 432
    iget v4, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/slim/preference/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    goto/16 :goto_0

    .line 418
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "folder":Ljava/io/File;
    .end local v8    # "image":Ljava/io/File;
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 419
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 420
    const v2, 0x3704002b

    .line 419
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    const/4 v2, 0x1

    .line 419
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 421
    return-void

    .line 437
    :cond_4
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 440
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 193
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 559
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3704000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 562
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x37040024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    const/4 v1, 0x3

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 564
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x37040025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x37080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 564
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 558
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const v0, 0x37090003

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 343
    iget-boolean v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragmentAttached:Z

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 345
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const v2, 0x3702000c

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 346
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v0    # "fragment":Landroid/app/Fragment;
    .restart local v1    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 523
    :pswitch_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mMaxAllowedActions:I

    if-ne v0, v2, :cond_1

    .line 524
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    .line 525
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x37040027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 529
    :cond_1
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    if-eqz v0, :cond_0

    .line 531
    iput v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 532
    iput-boolean v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 533
    iput-boolean v5, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 534
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(IZ)V

    goto :goto_0

    .line 536
    :cond_2
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    if-nez v0, :cond_3

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 537
    invoke-direct/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDialogInner(IIZZZ)V

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    if-eqz v0, :cond_0

    .line 540
    iput v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 541
    iput-boolean v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 542
    iput-boolean v5, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 543
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(I)V

    goto :goto_0

    .line 548
    :pswitch_1
    const/4 v7, 0x4

    move-object v6, p0

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDialogInner(IIZZZ)V

    goto :goto_0

    .line 551
    :pswitch_2
    const/4 v7, 0x3

    move-object v6, p0

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDialogInner(IIZZZ)V

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 201
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "actionMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    .line 202
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "maxAllowedActions"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mMaxAllowedActions:I

    .line 203
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fragment"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mAdditionalFragment:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "actionValues"

    const-string/jumbo v3, "shortcut_action_values"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionValuesKey:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "actionEntries"

    const-string/jumbo v3, "shortcut_action_entries"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionEntriesKey:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "disableLongpress"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableLongpress:Z

    .line 207
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "disableDoubleTap"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableDoubleTap:Z

    .line 208
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "useAppPickerOnly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseAppPickerOnly:Z

    .line 209
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "useOnlyFullAppPicker"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mUseFullAppsOnly:Z

    .line 210
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "disableIconPicker"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableIconPicker:Z

    .line 211
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "disableDeleteLastEntry"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableDeleteLastEntry:Z

    .line 213
    const v0, 0x3702000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDisableMessage:Landroid/widget/TextView;

    .line 215
    new-instance v6, Lorg/slim/action/ActionsArray;

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Lorg/slim/action/ActionsArray;-><init>(Landroid/content/Context;)V

    .line 216
    .local v6, "actionsArray":Lorg/slim/action/ActionsArray;
    invoke-virtual {v6}, Lorg/slim/action/ActionsArray;->getValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionDialogValues:[Ljava/lang/String;

    .line 217
    invoke-virtual {v6}, Lorg/slim/action/ActionsArray;->getEntries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionDialogEntries:[Ljava/lang/String;

    .line 219
    new-instance v0, Lorg/slim/utils/ShortcutPickerHelper;

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lorg/slim/utils/ShortcutPickerHelper;-><init>(Landroid/app/Activity;Lorg/slim/utils/ShortcutPickerHelper$OnPickListener;)V

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPicker:Lorg/slim/utils/ShortcutPickerHelper;

    .line 221
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, ".slim"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "icons"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v7, "folder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string/jumbo v3, "shortcut.tmp"

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mImageTmp:Ljava/io/File;

    .line 231
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    check-cast v8, Lorg/slim/preference/dslv/DragSortListView;

    .line 233
    .local v8, "listView":Lorg/slim/preference/dslv/DragSortListView;
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->onDrop:Lorg/slim/preference/dslv/DragSortListView$DropListener;

    invoke-virtual {v8, v0}, Lorg/slim/preference/dslv/DragSortListView;->setDropListener(Lorg/slim/preference/dslv/DragSortListView$DropListener;)V

    .line 234
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->onRemove:Lorg/slim/preference/dslv/DragSortListView$RemoveListener;

    invoke-virtual {v8, v0}, Lorg/slim/preference/dslv/DragSortListView;->setRemoveListener(Lorg/slim/preference/dslv/DragSortListView$RemoveListener;)V

    .line 236
    invoke-direct {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getConfig()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    .line 238
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    .line 240
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigsAdapter:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    invoke-virtual {p0, v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v11

    :goto_0
    invoke-direct {p0, v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDisableMessage(Z)V

    .line 244
    :cond_1
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$3;

    invoke-direct {v0, p0}, Lorg/slim/preference/dslv/ActionListViewSettings$3;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings;)V

    invoke-virtual {v8, v0}, Lorg/slim/preference/dslv/DragSortListView;->setOnItemTouchedCallback(Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;)V

    .line 325
    const v0, 0x3702000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mDivider:Landroid/view/View;

    .line 326
    invoke-direct {p0}, Lorg/slim/preference/dslv/ActionListViewSettings;->loadAdditionalFragment()V

    .line 330
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "dslv_settings"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 331
    .local v9, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "first_help_shown_mode_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "first_help_shown_mode_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mActionMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    const/4 v1, 0x3

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->showDialogInner(IIZZZ)V

    .line 337
    :cond_2
    invoke-virtual {p0, v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->setHasOptionsMenu(Z)V

    .line 197
    return-void

    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    move v0, v2

    .line 241
    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "isApplication"    # Z

    .prologue
    .line 373
    iget v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    if-eqz v0, :cond_2

    .line 397
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    if-eqz v0, :cond_3

    .line 398
    invoke-direct {p0, p1, p2}, Lorg/slim/preference/dslv/ActionListViewSettings;->addNewAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingDoubleTap:Z

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingNewAction:Z

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 372
    return-void

    .line 376
    :cond_2
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingDoubleTap:Z

    if-nez v0, :cond_1

    .line 378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string/jumbo v1, ".slim"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string/jumbo v1, "icons"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v9, "folder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "shortcut_"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 382
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, ".png"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 386
    .local v11, "out":Ljava/io/FileOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p3, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 387
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?hasExtraIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v10, "image":Ljava/io/File;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    goto/16 :goto_0

    .line 388
    .end local v10    # "image":Ljava/io/File;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 389
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?hasExtraIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v10    # "image":Ljava/io/File;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    goto/16 :goto_0

    .line 390
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "image":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?hasExtraIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v10    # "image":Ljava/io/File;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 390
    throw v0

    .line 400
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "folder":Ljava/io/File;
    .end local v10    # "image":Ljava/io/File;
    :cond_3
    iget v4, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingIndex:I

    .line 401
    iget-boolean v5, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingLongpress:Z

    iget-boolean v6, p0, Lorg/slim/preference/dslv/ActionListViewSettings;->mPendingDoubleTap:Z

    .line 400
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/slim/preference/dslv/ActionListViewSettings;->updateAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_1
.end method
