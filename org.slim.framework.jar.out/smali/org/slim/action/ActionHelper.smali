.class public Lorg/slim/action/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SLIM_FRAMEWORK_METADATA_NAME:Ljava/lang/String; = "org.slim.framework"

.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-static {p0}, Lorg/slim/action/ActionHelper;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 255
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v0, Lorg/slim/action/ActionsArray;

    invoke-direct {v0, p0}, Lorg/slim/action/ActionsArray;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "actionsArray":Lorg/slim/action/ActionsArray;
    const/4 v2, -0x1

    .line 258
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/slim/action/ActionsArray;->getEntries()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 259
    invoke-virtual {v0}, Lorg/slim/action/ActionsArray;->getValues()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v0}, Lorg/slim/action/ActionsArray;->getEntries()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const-string/jumbo v4, "org.slim.framework:string/shortcut_action_none"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 263
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v9, -0x1

    .line 90
    .local v9, "resId":I
    const/4 v1, 0x0

    .line 91
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 92
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-nez v8, :cond_0

    .line 93
    const/4 v11, 0x0

    return-object v11

    .line 98
    :cond_0
    :try_start_0
    const-string/jumbo v11, "org.slim.framework"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 104
    .local v10, "resources":Landroid/content/res/Resources;
    if-nez v10, :cond_1

    .line 105
    const-string/jumbo v11, "TEST"

    const-string/jumbo v12, "resources is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 110
    :try_start_1
    const-string/jumbo v11, ".*?hasExtraIcon="

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "extraIconPath":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 118
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 119
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 134
    .end local v6    # "extraIconPath":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    const-string/jumbo v11, "system_shortcut="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 136
    const-string/jumbo v11, "system_shortcut="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 135
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    const-string/jumbo v12, "drawable"

    const-string/jumbo v13, "org.slim.framework"

    .line 135
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 138
    if-lez v9, :cond_a

    .line 139
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 99
    .end local v10    # "resources":Landroid/content/res/Resources;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ActionHelper:"

    const-string/jumbo v12, "can\'t access systemui resources"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v11, 0x0

    return-object v11

    .line 112
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "extraIconPath":Ljava/lang/String;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    :cond_4
    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 114
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 114
    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 129
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "extraIconPath":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 130
    .local v5, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v3

    .line 123
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "org.slim.framework:drawable/ic_sysbar_null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 122
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 124
    if-lez v9, :cond_3

    .line 125
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_5

    const-string/jumbo v11, "TEST"

    const-string/jumbo v12, "sysbar_null is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_5
    return-object v1

    .line 141
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    if-eqz p2, :cond_7

    const-string/jumbo v11, "empty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 152
    :cond_7
    const-string/jumbo v11, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 153
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lorg/slim/action/ActionHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    .line 155
    if-lez v9, :cond_a

    .line 156
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    .line 142
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v7    # "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 144
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 146
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 147
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 146
    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 145
    invoke-static {v13}, Lorg/slim/utils/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 144
    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v11

    .line 149
    :cond_9
    const-string/jumbo v11, "ActionHelper:"

    const-string/jumbo v12, "can\'t access custom icon image"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v11, 0x0

    return-object v11

    .line 159
    .end local v7    # "f":Ljava/io/File;
    :cond_a
    return-object v1
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 163
    const/4 v0, -0x1

    .line 165
    .local v0, "resId":I
    const-string/jumbo v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_home"

    .line 166
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string/jumbo v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_back"

    .line 169
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    const-string/jumbo v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_recent"

    .line 172
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    const-string/jumbo v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-nez v1, :cond_3

    .line 176
    const-string/jumbo v1, "**nowontap**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-nez v1, :cond_3

    .line 177
    const-string/jumbo v1, "**voice_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-nez v1, :cond_3

    .line 178
    const-string/jumbo v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_4

    .line 180
    :cond_3
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_search"

    .line 179
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_4
    const-string/jumbo v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_menu_big"

    .line 182
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_ime_switcher"

    .line 185
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_6
    const-string/jumbo v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_power"

    .line 188
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 190
    :cond_7
    const-string/jumbo v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_power_menu"

    .line 191
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 193
    :cond_8
    const-string/jumbo v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 195
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_vib"

    .line 194
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 196
    :cond_9
    const-string/jumbo v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 198
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_silent"

    .line 197
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 199
    :cond_a
    const-string/jumbo v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_ring_vib_silent"

    .line 200
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 202
    :cond_b
    const-string/jumbo v1, "**expanded_desktop**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 204
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_expanded_desktop"

    .line 203
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 205
    :cond_c
    const-string/jumbo v1, "**kill**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 207
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_killtask"

    .line 206
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 208
    :cond_d
    const-string/jumbo v1, "**lastapp**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 210
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_lastapp"

    .line 209
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 211
    :cond_e
    const-string/jumbo v1, "**notifications**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 213
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_notifications"

    .line 212
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 214
    :cond_f
    const-string/jumbo v1, "**settings_panel**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 216
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_qs"

    .line 215
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 217
    :cond_10
    const-string/jumbo v1, "**screenshot**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 219
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_screenshot"

    .line 218
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 220
    :cond_11
    const-string/jumbo v1, "**torch**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 222
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_torch"

    .line 221
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 223
    :cond_12
    const-string/jumbo v1, "**camera**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 225
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_camera"

    .line 224
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 236
    :cond_13
    const-string/jumbo v1, "org.slim.framework:drawable/ic_sysbar_null"

    .line 235
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getNavBarConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p0}, Lorg/slim/action/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v2, v2, v1}, Lorg/slim/utils/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lorg/slim/action/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, p1, p2, v1}, Lorg/slim/utils/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "navigation_bar_config"

    .line 66
    const/4 v3, -0x2

    .line 63
    invoke-static {v1, v2, v3}, Lorg/slim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "**back**|**null**|**null**|empty|**home**|**nowontap**|**null**|empty|**recents**|**null**|**null**|empty"

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getPowerMenuIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lorg/slim/action/ActionHelper;->getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    const v2, 0x37060001

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 246
    invoke-static {v0, v1}, Lorg/slim/utils/ImageHelper;->getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    :cond_0
    return-object v0
.end method

.method private static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 271
    const-string/jumbo v2, "org.slim.framework"

    .line 270
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setNavBarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/slim/action/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/slim/action/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 77
    const-string/jumbo v0, "**back**|**null**|**null**|empty|**home**|**nowontap**|**null**|empty|**recents**|**null**|**null**|empty"

    .line 81
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "navigation_bar_config"

    .line 81
    invoke-static {v1, v2, v0}, Lorg/slim/provider/SlimSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void

    .line 79
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/slim/utils/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
