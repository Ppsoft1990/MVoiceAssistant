.class Lhg;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lhb;

.field private c:[Ljava/lang/String;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhb;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactAccessor"    # Lhb;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lhg;->c:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput-object p2, p0, Lhg;->b:Lhb;

    .line 60
    iput-object p1, p0, Lhg;->a:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic a(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lhg;

    .prologue
    .line 30
    iget-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0, "x0"    # Lhg;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 30
    iput-object p1, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method static synthetic b(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lhg;

    .prologue
    .line 30
    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0, "x0"    # Lhg;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 30
    iput-object p1, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 427
    iget-object v0, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 428
    iput-object v1, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 432
    :cond_0
    iget-object v0, p0, Lhg;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhg;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 433
    iput-object v1, p0, Lhg;->c:[Ljava/lang/String;

    .line 436
    :cond_1
    iget-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 437
    iget-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 438
    iput-object v1, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 439
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 442
    :cond_2
    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 443
    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 444
    iput-object v1, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 445
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 447
    :cond_3
    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v2, "numberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    iget-object v5, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 182
    iget-object v5, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 183
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 191
    new-instance v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    const/4 v5, 0x0

    invoke-direct {v3, p1, v5}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .restart local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v1, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 194
    invoke-virtual {v3, v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V

    .line 197
    .end local v1    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "nameStr":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 126
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v3, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "contactId":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nameStr":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 134
    .end local v0    # "contactId":Ljava/lang/String;
    .restart local v2    # "nameStr":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 135
    iget-object v3, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 136
    iget-object v3, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 137
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    .line 147
    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_2
    if-nez v2, :cond_3

    .line 148
    iget-object v3, p0, Lhg;->b:Lhb;

    invoke-virtual {v3, p1}, Lhb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_3
    const-string/jumbo v3, "ContactUtil"

    const-string/jumbo v4, "getContactNameByNumber"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object v2
.end method

.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    const/4 v8, 0x0

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v4, "tmpName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v3, "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 363
    .local v2, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    .line 365
    iget-object v6, p0, Lhg;->a:Landroid/content/Context;

    const v7, 0x7f0c032b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 367
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v2    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_2
    invoke-virtual {p0, v3}, Lhg;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    return-object v5
.end method

.method protected a(ZLjava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "fuzzyFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 255
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v2, "queryContactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 260
    .local v3, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v4, "tmpContactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    iget-object v6, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 265
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_3

    .line 266
    iget-object v6, p0, Lhg;->b:Lhb;

    invoke-virtual {v6, v8, v0}, Lhb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 270
    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 272
    invoke-direct {p0, v0}, Lhg;->e(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v3

    .line 273
    if-nez v3, :cond_2

    .line 275
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    new-instance v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    iget-object v6, p0, Lhg;->a:Landroid/content/Context;

    const v7, 0x7f0c032b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v3, v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 281
    :cond_2
    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_3
    iget-object v6, p0, Lhg;->b:Lhb;

    invoke-virtual {v6, v8, v0}, Lhb;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v3

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 285
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 287
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .end local v4    # "tmpContactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    :cond_6
    const-string/jumbo v5, "ContactUtil"

    const-string/jumbo v6, "queryContactSetByNames"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-object v2
.end method

.method protected a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .local p2, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .restart local v0    # "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "number":Ljava/lang/String;
    const/4 v3, 0x0

    .line 307
    .local v3, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-static {p1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    invoke-virtual {v6, v2}, Lhe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 309
    new-instance v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-direct {v3, v1, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .restart local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v3, v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 316
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v4    # "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    iget-object v6, p0, Lhg;->a:Landroid/content/Context;

    const v7, 0x7f0c032b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v8}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_1

    .line 319
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_1
    return-object v0
.end method

.method protected a()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 68
    invoke-direct {p0}, Lhg;->d()V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lhg;->b:Lhb;

    invoke-virtual {v10}, Lhb;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iput-object v10, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    iget-object v10, p0, Lhg;->b:Lhb;

    invoke-virtual {v10}, Lhb;->g()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iput-object v10, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {p0}, Lhg;->b()V

    .line 74
    iget-object v10, p0, Lhg;->b:Lhb;

    invoke-virtual {v10}, Lhb;->h()Ljava/util/List;

    move-result-object v7

    .line 76
    .local v7, "simItemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v10, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 77
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 81
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string/jumbo v10, "\u0000"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    const-string/jumbo v10, "\u0000"

    const-string/jumbo v11, " "

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "tmpName":Ljava/lang/String;
    iget-object v10, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "tmpName":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 92
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 93
    .local v2, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    if-nez v2, :cond_3

    .line 91
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4    # "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 101
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string/jumbo v10, "\u0000"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 104
    const-string/jumbo v10, "\u0000"

    const-string/jumbo v11, " "

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .restart local v8    # "tmpName":Ljava/lang/String;
    iget-object v10, p0, Lhg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v8    # "tmpName":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v9, "tmpSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lhg;->c:[Ljava/lang/String;

    .line 114
    iget-object v10, p0, Lhg;->c:[Ljava/lang/String;

    return-object v10
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :cond_1
    iget-object v1, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 391
    .local v0, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    .end local v0    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_1
    return-object v1
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhg$1;

    invoke-direct {v1, p0}, Lhg$1;-><init>(Lhg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhg$2;

    invoke-direct {v1, p0}, Lhg$2;-><init>(Lhg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    if-nez p1, :cond_1

    .line 403
    const/4 v0, 0x0

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    const/4 v0, 0x0

    .line 407
    .local v0, "hasNumberFlag":Z
    iget-object v2, p0, Lhg;->b:Lhb;

    invoke-virtual {v2, p1}, Lhb;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 410
    :cond_2
    iget-object v2, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 411
    iget-object v2, p0, Lhg;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 412
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 413
    const/4 v0, 0x1

    .line 414
    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhg;->b:Lhb;

    invoke-virtual {v0, p1}, Lhb;->e(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
