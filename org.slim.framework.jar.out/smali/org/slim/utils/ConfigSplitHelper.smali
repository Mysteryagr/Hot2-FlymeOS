.class public Lorg/slim/utils/ConfigSplitHelper;
.super Ljava/lang/Object;
.source "ConfigSplitHelper.java"


# static fields
.field private static final SLIM_METADATA_NAME:Ljava/lang/String; = "org.slim.framework"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "entries"    # Ljava/lang/String;
    .param p4, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/16 v16, 0x0

    .line 37
    .local v16, "counter":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v15, "actionConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/slim/action/ActionConfig;>;"
    const/4 v14, 0x0

    .line 40
    .local v14, "actionConfig":Lorg/slim/action/ActionConfig;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 41
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 43
    .local v4, "slimResources":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v2, "org.slim.framework"

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 49
    .end local v4    # "slimResources":Landroid/content/res/Resources;
    :goto_0
    const-string/jumbo v2, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v18, v2

    .end local v14    # "actionConfig":Lorg/slim/action/ActionConfig;
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v5, v19, v18

    .line 50
    .local v5, "configValue":Ljava/lang/String;
    add-int/lit8 v16, v16, 0x1

    .line 51
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 52
    new-instance v14, Lorg/slim/action/ActionConfig;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 53
    invoke-static/range {v2 .. v7}, Lorg/slim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    move-object v7, v5

    .line 52
    invoke-direct/range {v6 .. v13}, Lorg/slim/action/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 57
    if-eqz p4, :cond_4

    .line 58
    invoke-virtual {v14, v5}, Lorg/slim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/16 v16, 0x0

    .line 69
    :cond_1
    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 70
    invoke-virtual {v14, v5}, Lorg/slim/action/ActionConfig;->setDoubleTapAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 72
    invoke-static/range {v2 .. v7}, Lorg/slim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v14, v2}, Lorg/slim/action/ActionConfig;->setDoubleTapActionDescription(Ljava/lang/String;)V

    .line 75
    :cond_2
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 76
    invoke-virtual {v14, v5}, Lorg/slim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/16 v16, 0x0

    .line 49
    :cond_3
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 44
    .end local v5    # "configValue":Ljava/lang/String;
    .restart local v4    # "slimResources":Landroid/content/res/Resources;
    .restart local v14    # "actionConfig":Lorg/slim/action/ActionConfig;
    :catch_0
    move-exception v17

    .line 45
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ConfigSplitHelper"

    const-string/jumbo v6, "can\'t access slim framework resources"

    move-object/from16 v0, v17

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    .end local v4    # "slimResources":Landroid/content/res/Resources;
    .end local v14    # "actionConfig":Lorg/slim/action/ActionConfig;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "configValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v14, v5}, Lorg/slim/action/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 65
    invoke-static/range {v2 .. v7}, Lorg/slim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v14, v2}, Lorg/slim/action/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    .end local v5    # "configValue":Ljava/lang/String;
    :cond_5
    return-object v15
.end method

.method public static setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .param p1, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/slim/action/ActionConfig;>;"
    const-string/jumbo v1, ""

    .line 91
    .local v1, "finalConfig":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slim/action/ActionConfig;

    .line 96
    .local v0, "actionConfig":Lorg/slim/action/ActionConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/slim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    if-nez p1, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/slim/action/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    const-string/jumbo v4, "|"

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/slim/action/ActionConfig;->getDoubleTapAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    const-string/jumbo v4, "|"

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/slim/action/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 106
    .end local v0    # "actionConfig":Lorg/slim/action/ActionConfig;
    :cond_2
    return-object v1
.end method
