.class public Lact;
.super Ljava/lang/Object;
.source "ChooseContactNumberUtils.java"


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pNumber"    # Ljava/lang/String;
    .param p4, "pFocus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "pNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 50
    sput v4, Lact;->a:I

    .line 51
    sput-boolean v4, Lact;->b:Z

    .line 52
    new-instance v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "helper":Lcom/iflytek/viafly/contacts/ContactInteractionHelper;
    const-string/jumbo v4, "telephone"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p1, v5, p3}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 56
    invoke-virtual {v0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a()Laaw;

    move-result-object v1

    .line 57
    .local v1, "result":Laaw;
    invoke-virtual {v1}, Laaw;->a()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lact;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "telephone"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 58
    invoke-static {p0, p1, v4, v2, v5}, Lact;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "tip":Ljava/lang/String;
    return-object v3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 11
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "showNumber"    # Ljava/lang/String;
    .param p4, "focusCall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 101
    :cond_0
    const/4 v8, 0x0

    .line 224
    :goto_0
    return-object v8

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    .line 114
    .local v1, "context":Landroid/content/Context;
    if-eqz p4, :cond_4

    .line 115
    const v8, 0x7f0c0341

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    const-string/jumbo v8, "[r1]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v6, "showSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v7, "showText":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v5, "showBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "`"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "numbers":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 126
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v9, 0x1

    aget-object v9, v4, v9

    const-string/jumbo v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, "first":I
    const/4 v9, 0x1

    aget-object v9, v4, v9

    const-string/jumbo v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "last":I
    if-le v3, v2, :cond_3

    .line 130
    const/4 v9, 0x1

    aget-object v9, v4, v9

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    .end local v2    # "first":I
    .end local v3    # "last":I
    .end local v4    # "numbers":[Ljava/lang/String;
    .end local v5    # "showBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "showSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "showText":Ljava/lang/String;
    :cond_4
    const v8, 0x7f0c0348

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    .restart local v6    # "showSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    .line 136
    const-string/jumbo v8, "`"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4    # "numbers":[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    sget v8, Lact;->a:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    sget v8, Lact;->a:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_8

    .line 138
    const v8, 0x7f0c0393

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eqz v1, :cond_6

    .line 144
    :cond_6
    const v8, 0x7f0c0372

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-eqz p4, :cond_7

    .line 154
    :goto_3
    const-string/jumbo v8, "[r0]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 148
    :cond_7
    const v8, 0x7f0c0376

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 156
    :cond_8
    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    .line 157
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 158
    .restart local v2    # "first":I
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 159
    .restart local v3    # "last":I
    if-le v3, v2, :cond_d

    .line 161
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_a

    .line 162
    const v8, 0x7f0c0393

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v8, "[n1]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/4 v8, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const v8, 0x7f0c0372

    .line 166
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v8, "[n0]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_9
    :goto_4
    if-eqz p4, :cond_c

    .line 207
    :goto_5
    const-string/jumbo v8, "[r0]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/4 v8, 0x0

    sput-boolean v8, Lact;->b:Z

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 170
    :cond_a
    if-lez v2, :cond_b

    .line 171
    const v8, 0x7f0c0393

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v8, "[n1]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const v8, 0x7f0c0371

    .line 174
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/4 v8, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const v8, 0x7f0c0367

    .line 177
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v8, "[n0]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 179
    :cond_b
    if-eqz v1, :cond_9

    goto :goto_4

    .line 201
    :cond_c
    const v8, 0x7f0c0376

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 213
    .end local v2    # "first":I
    .end local v3    # "last":I
    .end local v4    # "numbers":[Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    sput v8, Lact;->a:I

    .line 214
    if-eqz p4, :cond_e

    .line 223
    :goto_6
    const-string/jumbo v8, "[r0]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 217
    :cond_e
    const v8, 0x7f0c0376

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "isEditMode"    # Z

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const v0, 0x7f0c034d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c035e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "isEditMode"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0c0361

    const v4, 0x7f0c035f

    const v3, 0x7f0c0340

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "content":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-static {p2}, Lpz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-static {p0, p1}, Lact;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-static {p0, p1}, Lact;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 233
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 248
    :goto_0
    return-object v0

    .line 236
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v2

    .line 237
    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, "showText":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "tmpText":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-static {v1, v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string/jumbo v4, ""

    invoke-static {p0, v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v0    # "showText":Ljava/lang/String;
    .end local v1    # "tmpText":Ljava/lang/String;
    :cond_4
    move-object v0, v2

    .line 248
    goto :goto_0
.end method
