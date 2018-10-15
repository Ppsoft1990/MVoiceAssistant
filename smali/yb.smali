.class public Lyb;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "ClientConfigInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->a:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->c:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->a:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyb;->c:Ljava/util/List;

    .line 49
    invoke-virtual {p0, p1}, Lyb;->a(Ljava/util/List;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lyb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    :cond_0
    return-void

    .line 57
    :cond_1
    iget-object v6, p0, Lyb;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 58
    iget-object v6, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 59
    iget-object v6, p0, Lyb;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 62
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "type"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v7, "childtype"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "childType":Ljava/lang/String;
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "2006"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    new-instance v1, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    invoke-direct {v1, v3}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;-><init>(Ljava/util/Map;)V

    .line 66
    .local v1, "cliendAdapt":Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;
    iget-object v7, p0, Lyb;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1    # "cliendAdapt":Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;
    :cond_3
    :goto_1
    const-string/jumbo v7, "uid"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "uid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 76
    iput-object v5, p0, Lyb;->d:Ljava/lang/String;

    goto :goto_0

    .line 67
    .end local v5    # "uid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 68
    iget-object v7, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_5
    const-string/jumbo v7, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "3001"

    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 71
    new-instance v2, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;-><init>(Ljava/util/Map;)V

    .line 72
    .local v2, "clientAdapt":Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;
    iget-object v7, p0, Lyb;->c:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lyb;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :cond_0
    const-string/jumbo v0, ""

    .line 111
    :cond_1
    :goto_0
    return-object v0

    .line 103
    :cond_2
    const-string/jumbo v0, ""

    .line 104
    .local v0, "ctrlparams":Ljava/lang/String;
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 105
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "key"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "ctrlparams"

    invoke-static {v1, v4}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    const-string/jumbo v3, "value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctrlparams":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 108
    .restart local v0    # "ctrlparams":Ljava/lang/String;
    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    :cond_0
    const-string/jumbo v2, ""

    .line 127
    :cond_1
    :goto_0
    return-object v2

    .line 119
    :cond_2
    const-string/jumbo v2, ""

    .line 120
    .local v2, "serverUrl":Ljava/lang/String;
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 121
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "key"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "serveurls"

    invoke-static {v0, v4}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    const-string/jumbo v3, "value"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "serverUrl":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 124
    .restart local v2    # "serverUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 131
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    :cond_0
    const-string/jumbo v0, ""

    .line 143
    :cond_1
    :goto_0
    return-object v0

    .line 135
    :cond_2
    const-string/jumbo v0, ""

    .line 136
    .local v0, "funcparams":Ljava/lang/String;
    iget-object v3, p0, Lyb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 137
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "key"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "funcparams"

    invoke-static {v1, v4}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    const-string/jumbo v3, "value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "funcparams":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 140
    .restart local v0    # "funcparams":Ljava/lang/String;
    goto :goto_0
.end method
