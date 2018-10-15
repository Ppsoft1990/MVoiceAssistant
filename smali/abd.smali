.class public Labd;
.super Ljava/lang/Object;
.source "TelSmsUtil.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Labd;->a:Z

    .line 38
    sput-boolean v0, Labd;->b:Z

    .line 40
    sput-boolean v0, Labd;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const-string/jumbo v4, "\\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "part":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 98
    aget-object v4, v3, v0

    const-string/jumbo v5, "\u59d3\u540d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    aget-object v4, v3, v0

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "names":[Ljava/lang/String;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v2, v4

    .line 105
    .end local v0    # "i":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "part":[Ljava/lang/String;
    :cond_0
    return-object v1

    .line 97
    .restart local v0    # "i":I
    .restart local v3    # "part":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "smsboday"    # Ljava/lang/String;
    .param p1, "cut"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 177
    move-object v4, p0

    .line 178
    .local v4, "smsbodytemple":Ljava/lang/String;
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "part":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 181
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 182
    aget-object v5, v2, v7

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    aget-object v5, v2, v7

    const-string/jumbo v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 185
    aget-object v5, v3, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "invalidContent":Ljava/lang/String;
    aget-object v5, v2, v7

    const-string/jumbo v6, ""

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 184
    .end local v1    # "invalidContent":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_1
    aget-object v4, v2, v7

    .line 192
    if-nez p1, :cond_2

    .line 193
    aget-object v5, v2, v8

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    const-string/jumbo v5, "-"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .end local v2    # "part":[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "mAllSelectedContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 52
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 58
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "textSearchMode"    # B

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Labd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;BLcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 451
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;BLcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "textSearchMode"    # B
    .param p4, "pSpeechRecoSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v3, 0x1

    .line 462
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {v3}, Labd;->c(Z)V

    .line 464
    const-string/jumbo v0, "telephone"

    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 466
    const/4 v0, 0x0

    invoke-static {v0}, Labb;->a(Ljava/util/List;)V

    .line 467
    const-string/jumbo v0, "call"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p0, v0, p3, v1}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "addLatestSmsViewSceneFlag"    # Z

    .prologue
    .line 127
    sput-boolean p0, Labd;->a:Z

    .line 128
    return-void
.end method

.method public static a(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 10
    .param p0, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "txtcontent":Ljava/lang/String;
    const-string/jumbo v6, "TelSmsUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "item.getBody()\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v5, :cond_7

    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 66
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "part":[Ljava/lang/String;
    array-length v6, v4

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 68
    aget-object v5, v4, v7

    .line 71
    :cond_0
    invoke-static {v5}, Labd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    invoke-static {v5}, Labd;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 73
    .local v3, "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v6, v7

    .line 89
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "part":[Ljava/lang/String;
    :goto_0
    return v6

    .line 76
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "part":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 77
    .local v1, "isNumberLegal":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 78
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    :cond_3
    const/4 v1, 0x1

    .line 77
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_5
    if-eqz v1, :cond_6

    .line 83
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    move v6, v7

    .line 85
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "isNumberLegal":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "part":[Ljava/lang/String;
    :cond_7
    move v6, v7

    .line 89
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "\n"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    const-string/jumbo v5, "\\n"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "part":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 113
    aget-object v5, v4, v0

    const-string/jumbo v6, "\u59d3\u540d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    aget-object v5, v4, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    aget-object v5, v4, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "numbers":[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v3, v5

    .line 117
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "numbers":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    .end local v4    # "part":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "mFuzzySearchContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 426
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 429
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 434
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_2
    return-object p0
.end method

.method public static b(Z)V
    .locals 0
    .param p0, "isClickSmsViewSceneFlag"    # Z

    .prologue
    .line 131
    sput-boolean p0, Labd;->b:Z

    .line 132
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "suffix":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 137
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 138
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 139
    .local v0, "issuffix":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 143
    const/4 v0, 0x0

    .line 152
    :cond_0
    return-object v3

    .line 146
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"contacts.content_suffix\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0
    .param p0, "isDoubleCardManualDial"    # Z

    .prologue
    .line 439
    sput-boolean p0, Labd;->c:Z

    .line 440
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "teltimeout":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 158
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 159
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 160
    .local v0, "isteltimeout":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 164
    const/4 v0, 0x0

    .line 173
    :cond_0
    return-object v3

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"telephone.timeout\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 230
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 231
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 232
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 236
    const/4 v0, 0x0

    .line 245
    :cond_0
    return-object v3

    .line 239
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"telephone.business.url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 251
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 252
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 253
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 257
    const/4 v0, 0x0

    .line 266
    :cond_0
    return-object v3

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"video.sohu_wap_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 272
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 273
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 274
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 278
    const/4 v0, 0x0

    .line 287
    :cond_0
    return-object v3

    .line 281
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"video.sohu_wap_ad_class\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 298
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 299
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 300
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 304
    const/4 v0, 0x0

    .line 313
    :cond_0
    return-object v3

    .line 307
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"music.present.wap_present_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 324
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 325
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 326
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 330
    const/4 v0, 0x0

    .line 339
    :cond_0
    return-object v3

    .line 333
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"music.present.upload_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    const/4 v0, 0x1

    goto :goto_0

    .line 336
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 350
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 351
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 352
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 356
    const/4 v0, 0x0

    .line 365
    :cond_0
    return-object v3

    .line 359
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"music.present.record_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 376
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 377
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 378
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 382
    const/4 v0, 0x0

    .line 391
    :cond_0
    return-object v3

    .line 385
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"music.present.banner_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "returntext"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "\"[^\"]*\""

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 402
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 403
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 404
    .local v0, "isUrl":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    const-string/jumbo v4, "TelSmsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u7f51\u7edc\u8fd4\u56de\u4e1a\u52a1\u914d\u7f6e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 408
    const/4 v0, 0x0

    .line 417
    :cond_0
    return-object v3

    .line 411
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\"music.cmcc_music_url\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
