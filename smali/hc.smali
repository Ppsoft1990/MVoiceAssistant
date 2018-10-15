.class public Lhc;
.super Ljava/lang/Object;
.source "ContactCompareManager.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/base/contacts/entities/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhc;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 73
    sget-object v1, Lhc;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 74
    :cond_0
    const-string/jumbo v1, "ContactCompareManager"

    const-string/jumbo v2, "contact info hash map is null or size is 0"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    :goto_0
    return-object v0

    .line 77
    :cond_2
    sget-object v1, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactInfo;

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 20
    sput-object p0, Lhc;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-boolean v0, Lhc;->b:Z

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "ContactCompareManager"

    const-string/jumbo v1, "getLastContactInfoFromRom | already called"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhc$2;

    invoke-direct {v1}, Lhc$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 35
    :cond_0
    const-string/jumbo v3, "ContactCompareManager"

    const-string/jumbo v4, "name or number is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    new-instance v1, Lcom/iflytek/base/contacts/entities/ContactInfo;

    invoke-direct {v1}, Lcom/iflytek/base/contacts/entities/ContactInfo;-><init>()V

    .line 40
    .local v1, "info":Lcom/iflytek/base/contacts/entities/ContactInfo;
    iput-object p1, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    .local v0, "contactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 46
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    .line 47
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 48
    const-string/jumbo v3, "ContactCompareManager"

    const-string/jumbo v4, "saveLastContactInfo | contact number is unique | return "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_3
    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 52
    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactInfo;

    iget-object v3, v3, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    .line 54
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactInfo;

    iget-object v3, v3, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactInfo;

    iput-object p2, v3, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 56
    invoke-static {}, Lhc;->b()V

    goto/16 :goto_0

    .line 59
    :cond_4
    sget-object v3, Lhc;->a:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lhc;->b()V

    goto/16 :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lhc;->b:Z

    return p0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const-string/jumbo v0, "ContactCompareManager"

    const-string/jumbo v1, "contact info cache is null or size is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhc$1;

    invoke-direct {v1}, Lhc$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 89
    :cond_0
    const-string/jumbo v0, "ContactCompareManager"

    const-string/jumbo v1, "contact info hash map is null or size is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lhc;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
