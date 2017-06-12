.class public Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "ActionListViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/ActionListViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IIZZZ)Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "which"    # I
    .param p2, "longpress"    # Z
    .param p3, "doubletap"    # Z
    .param p4, "newAction"    # Z

    .prologue
    .line 758
    new-instance v1, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;-><init>()V

    .line 759
    .local v1, "frag":Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    const-string/jumbo v2, "which"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    const-string/jumbo v2, "longpress"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    const-string/jumbo v2, "doubletap"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    const-string/jumbo v2, "newAction"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 766
    return-object v1
.end method


# virtual methods
.method getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/slim/preference/dslv/ActionListViewSettings;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1037
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 775
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 776
    .local v17, "id":I
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "which"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 777
    .local v5, "which":I
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "longpress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 778
    .local v6, "longpress":Z
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "doubletap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 779
    .local v7, "doubletap":Z
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "newAction"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 780
    .local v8, "newAction":Z
    packed-switch v17, :pswitch_data_0

    .line 1033
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "unknown id "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    const v3, 0x37040024

    .line 782
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 784
    const v3, 0x37040003

    .line 782
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 785
    const/high16 v3, 0x1040000

    const/16 v23, 0x0

    .line 782
    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 787
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 786
    const v23, 0x104000a

    .line 782
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 820
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 823
    .local v20, "res":Landroid/content/res/Resources;
    const-string/jumbo v16, ""

    .line 824
    .local v16, "icon":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get4(Lorg/slim/preference/dslv/ActionListViewSettings;)I

    .line 827
    const v2, 0x3704002e

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 830
    .local v10, "actionMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get8(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 831
    const v2, 0x37040030

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 833
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 834
    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v16, v2, v3

    const v3, 0x37040031

    .line 833
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 835
    .local v13, "finalHelpMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get6(Lorg/slim/preference/dslv/ActionListViewSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 837
    const/16 v23, 0x0

    aput-object v10, v3, v23

    const v23, 0x37040032

    .line 836
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 839
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 840
    const v3, 0x3704000f

    .line 839
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 843
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$2;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 842
    const v23, 0x104000a

    .line 839
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 851
    .end local v10    # "actionMode":Ljava/lang/String;
    .end local v13    # "finalHelpMessage":Ljava/lang/String;
    .end local v16    # "icon":Ljava/lang/String;
    .end local v20    # "res":Landroid/content/res/Resources;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 852
    const v18, 0x3704002a

    .line 856
    .local v18, "message":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 857
    const v3, 0x37040028

    .line 856
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 860
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$3;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 859
    const v23, 0x104000a

    .line 856
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 854
    .end local v18    # "message":I
    :cond_2
    const v18, 0x37040029

    .restart local v18    # "message":I
    goto :goto_0

    .line 868
    .end local v18    # "message":I
    :pswitch_3
    if-eqz v6, :cond_6

    .line 869
    const v21, 0x37040021

    .line 881
    .local v21, "title":I
    :goto_1
    const/16 v22, 0x0

    .line 882
    .local v22, "values":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 883
    .local v11, "entries":[Ljava/lang/String;
    if-nez v6, :cond_3

    if-eqz v7, :cond_9

    .line 900
    .end local v11    # "entries":[Ljava/lang/String;
    .end local v22    # "values":[Ljava/lang/String;
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    if-eqz v7, :cond_c

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get3(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "finalDialogValues":[Ljava/lang/String;
    :goto_3
    if-nez v6, :cond_5

    if-eqz v7, :cond_d

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get2(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v9

    .line 904
    .local v9, "finalDialogEntries":[Ljava/lang/String;
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 904
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 906
    const/high16 v3, 0x1040000

    const/16 v23, 0x0

    .line 904
    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 908
    new-instance v2, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;[Ljava/lang/String;IZZZ[Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 870
    .end local v4    # "finalDialogValues":[Ljava/lang/String;
    .end local v9    # "finalDialogEntries":[Ljava/lang/String;
    .end local v21    # "title":I
    :cond_6
    if-eqz v7, :cond_7

    .line 871
    const v21, 0x37040006

    .restart local v21    # "title":I
    goto :goto_1

    .line 872
    .end local v21    # "title":I
    :cond_7
    if-eqz v8, :cond_8

    .line 873
    const v21, 0x37040023

    .restart local v21    # "title":I
    goto :goto_1

    .line 875
    .end local v21    # "title":I
    :cond_8
    const v21, 0x37040022

    .restart local v21    # "title":I
    goto :goto_1

    .line 884
    .restart local v11    # "entries":[Ljava/lang/String;
    .restart local v22    # "values":[Ljava/lang/String;
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v12, "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v14, "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get3(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v15, v2, :cond_b

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get3(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v15

    .line 889
    const-string/jumbo v3, "**null**"

    .line 888
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 890
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get2(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v15

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get3(Lorg/slim/preference/dslv/ActionListViewSettings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v15

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 895
    :cond_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "entries":[Ljava/lang/String;
    check-cast v11, [Ljava/lang/String;

    .line 896
    .local v11, "entries":[Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "values":[Ljava/lang/String;
    check-cast v22, [Ljava/lang/String;

    .local v22, "values":[Ljava/lang/String;
    goto/16 :goto_2

    .line 900
    .end local v11    # "entries":[Ljava/lang/String;
    .end local v12    # "finalEntriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "finalValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i":I
    .end local v22    # "values":[Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v22

    .restart local v4    # "finalDialogValues":[Ljava/lang/String;
    goto/16 :goto_3

    .line 902
    :cond_d
    move-object v9, v11

    .restart local v9    # "finalDialogEntries":[Ljava/lang/String;
    goto/16 :goto_4

    .line 932
    .end local v4    # "finalDialogValues":[Ljava/lang/String;
    .end local v9    # "finalDialogEntries":[Ljava/lang/String;
    .end local v21    # "title":I
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 933
    const v3, 0x37040036

    .line 932
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 934
    const/high16 v3, 0x1040000

    const/16 v23, 0x0

    .line 932
    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 936
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V

    .line 935
    const v23, 0x37070004

    .line 932
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 998
    :pswitch_5
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_e

    .line 999
    const v19, 0x37040010

    .line 1003
    .local v19, "msg":I
    :goto_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const v23, 0x3704000e

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1007
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8, v5}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;ZI)V

    .line 1006
    const v23, 0x104000a

    .line 1003
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1021
    new-instance v3, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8, v5}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;ZI)V

    .line 1020
    const/high16 v23, 0x1040000

    .line 1003
    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1001
    .end local v19    # "msg":I
    :cond_e
    const v19, 0x37040011

    .restart local v19    # "msg":I
    goto :goto_6

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
