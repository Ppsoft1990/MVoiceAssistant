.class public Lacw;
.super Ljava/lang/Object;
.source "MessageInteractionUtils.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "\u4ece\u5bb9\u751f\u6d3b\uff0c\u4ece\u7075\u7280\u5f00\u59cb"

    sput-object v0, Lacw;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lacw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lacw;->b:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    sput v0, Lacw;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "speechIntent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "local_lexicon_item"

    invoke-static {p0}, Lacw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public static a(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 3
    .param p0, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 69
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->f(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_DIAL_SMS_CONFIG_SUFFIX"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "suffix":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lacw;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Laau;)Z
    .locals 4
    .param p0, "pContactFilterResult"    # Laau;

    .prologue
    .line 50
    invoke-virtual {p0}, Laau;->f()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "nameTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 58
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    const-string/jumbo v0, "\u795d\u798f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Laau;)Z
    .locals 3
    .param p0, "result"    # Laau;

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Laau;->getOperation()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "send"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Laau;->getChannel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Laau;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Laau;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0c037e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0c0364

    .line 99
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0c0365

    .line 100
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0c0362

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
