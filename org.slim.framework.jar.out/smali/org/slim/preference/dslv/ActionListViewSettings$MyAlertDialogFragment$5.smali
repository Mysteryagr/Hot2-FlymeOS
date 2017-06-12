.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 936
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v5, 0x0

    .line 938
    packed-switch p2, :pswitch_data_0

    .line 937
    :goto_0
    return-void

    .line 940
    :pswitch_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    .line 941
    const-string/jumbo v3, "empty"

    .line 942
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get11(Lorg/slim/preference/dslv/ActionListViewSettings;)I

    move-result v4

    move-object v2, v1

    move v6, v5

    .line 940
    invoke-static/range {v0 .. v6}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap6(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 943
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    goto :goto_0

    .line 946
    :pswitch_1
    new-instance v11, Landroid/widget/ListView;

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 947
    .local v11, "list":Landroid/widget/ListView;
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 948
    new-instance v9, Landroid/app/Dialog;

    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 950
    .local v9, "holoDialog":Landroid/app/Dialog;
    const v0, 0x3704003a

    .line 949
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 951
    invoke-virtual {v9, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 952
    new-instance v0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;

    invoke-direct {v0, p0, v9}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;-><init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;Landroid/app/Dialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 964
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 967
    .end local v9    # "holoDialog":Landroid/app/Dialog;
    .end local v11    # "list":Landroid/widget/ListView;
    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 968
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "image/*"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const-string/jumbo v0, "scale"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    const-string/jumbo v0, "outputFormat"

    .line 972
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string/jumbo v0, "aspectX"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    const-string/jumbo v0, "aspectY"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    const-string/jumbo v0, "outputX"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    const-string/jumbo v0, "outputY"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    :try_start_0
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get10(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 979
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get10(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 980
    const-string/jumbo v0, "output"

    .line 981
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get10(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 980
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 982
    const-string/jumbo v0, "return-data"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    .line 984
    const/16 v1, 0x3e8

    .line 983
    invoke-virtual {v0, v10, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 985
    :catch_0
    move-exception v8

    .line 986
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 987
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 988
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
