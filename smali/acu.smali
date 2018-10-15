.class public Lacu;
.super Ljava/lang/Object;
.source "ContactInteractionUtils.java"


# direct methods
.method public static a(Laau;)Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 5
    .param p0, "pContactFilterResult"    # Laau;

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 176
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 178
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Laau;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {p0}, Laau;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 180
    invoke-virtual {p0}, Laau;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "number":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 182
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 183
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 185
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0c0361

    const v4, 0x7f0c035f

    const v3, 0x7f0c0340

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-static {p1}, Lpz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->d()Z

    move-result v2

    invoke-static {p0, v2}, Lacu;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->d()Z

    move-result v2

    invoke-static {p0, v2}, Lacu;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pNumber"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string/jumbo v0, ""

    .line 197
    .local v0, "location":Ljava/lang/String;
    const-string/jumbo v1, "\u672a\u77e5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-static {p0, p1}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    const-string/jumbo v1, "null"

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    const-string/jumbo v0, ""

    .line 216
    :cond_1
    :goto_0
    return-object v0

    .line 204
    :cond_2
    const-string/jumbo v0, "\u56fa\u8bdd"

    goto :goto_0

    .line 207
    :cond_3
    invoke-static {p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-static {p0, p2}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_4

    const-string/jumbo v1, "null"

    if-ne v0, v1, :cond_1

    .line 210
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    .line 213
    :cond_5
    const-string/jumbo v0, "\u56fa\u8bdd"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contactIconData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 155
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    .line 158
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "fileDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "fileName":Ljava/lang/String;
    array-length v2, p2

    .line 163
    invoke-static {p2, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    invoke-static {v1, v0, v4, v2}, Lcom/iflytek/yd/util/FileManager;->saveDrawableToFile(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "isEditMode"    # Z

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    const v0, 0x7f0c034d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c035e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILaau;)Ljava/util/List;
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pEngine"    # I
    .param p2, "pContactFilterResult"    # Laau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Laau;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p2}, Laay;->a(Landroid/content/Context;Laau;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const-string/jumbo v4, "ContactInteractionUtils"

    const-string/jumbo v5, "MethodNamd: queryContactInfo"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0, p2}, Lazk;->a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v2

    .line 48
    .local v2, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v2    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_0
    return-object v1

    .line 52
    .end local v1    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_1
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    .line 54
    invoke-virtual {p2}, Laau;->c()Ljava/util/List;

    move-result-object v5

    .line 55
    invoke-virtual {p2}, Laau;->d()Ljava/util/List;

    move-result-object v6

    .line 53
    invoke-virtual {v4, p0, v5, v6}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 56
    .restart local v1    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 57
    .restart local v2    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhe;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, "contactIconData":[B
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v2, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->setContactIconUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pEngine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "pNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "pNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2, p3}, Lacu;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const-string/jumbo v4, "ContactInteractionUtils"

    const-string/jumbo v5, "MethodNamd: queryContactInfo"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0, p2, p3}, Lazk;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v2

    .line 82
    .local v2, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_0
    return-object v1

    .line 86
    .end local v1    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_1
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    .line 87
    invoke-virtual {v4, p0, p2, p3}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 90
    .restart local v1    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 91
    .restart local v2    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhe;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    .local v0, "contactIconData":[B
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v0}, Lacu;->a(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v2, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->setContactIconUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .param p0, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "pContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-nez p1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 113
    .local v0, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v5

    .line 114
    .local v5, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 117
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v3, "locationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    .line 121
    .local v1, "isMobile":Z
    if-eqz v1, :cond_4

    .line 122
    invoke-static {p0, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "location":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    .end local v2    # "location":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "\u56fa\u8bdd"

    .restart local v2    # "location":Ljava/lang/String;
    goto :goto_2

    .line 130
    .end local v1    # "isMobile":Z
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberLocationHashMap(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "pNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "pNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lazk;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "setList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0c0237

    const/4 v10, 0x0

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "contentString":Ljava/lang/String;
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .local v0, "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c006f

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v8}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 266
    .local v7, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    const-string/jumbo v5, ""

    .line 267
    .local v5, "numberContent":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 268
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 269
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberTypesHashMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 271
    .local v6, "numberType":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    :goto_1
    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_1

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 279
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 285
    .end local v2    # "i":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "numberContent":Ljava/lang/String;
    .end local v6    # "numberType":Ljava/lang/String;
    .end local v7    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_2
    if-eqz v1, :cond_3

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    :cond_3
    return-object v1
.end method
