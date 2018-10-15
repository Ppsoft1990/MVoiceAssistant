.class public Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;
.super Ljava/lang/Object;
.source "LogCollecterRequest.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bRead:Z

.field private broadcastCount:I

.field private dbChangeCount:I

.field private readCount:I

.field private unReadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "LogCollecterRequest"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZIIII)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p3, "bRead"    # Z
    .param p4, "broadcastCount"    # I
    .param p5, "dbChangeCount"    # I
    .param p6, "readCount"    # I
    .param p7, "unReadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIIII)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "LogCollecterRequest"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->action:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps:Ljava/util/List;

    .line 32
    iput-boolean p3, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->bRead:Z

    .line 33
    iput p4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->broadcastCount:I

    .line 34
    iput p5, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->dbChangeCount:I

    .line 35
    iput p6, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->readCount:I

    .line 36
    iput p7, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->unReadCount:I

    .line 37
    return-void
.end method

.method private apps2String(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    const-string/jumbo v2, ""

    .line 109
    :goto_0
    return-object v2

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string/jumbo v3, "^"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 106
    .end local v0    # "app":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 109
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->broadcastCount:I

    return v0
.end method

.method public getDbChangeCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->dbChangeCount:I

    return v0
.end method

.method public getReadCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->readCount:I

    return v0
.end method

.method public getUnReadCount()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->unReadCount:I

    return v0
.end method

.method public isbRead()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->bRead:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->action:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setBroadcastCount(I)V
    .locals 0
    .param p1, "broadcastCount"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->broadcastCount:I

    .line 69
    return-void
.end method

.method public setDbChangeCount(I)V
    .locals 0
    .param p1, "dbChangeCount"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->dbChangeCount:I

    .line 77
    return-void
.end method

.method public setReadCount(I)V
    .locals 0
    .param p1, "readCount"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->readCount:I

    .line 85
    return-void
.end method

.method public setUnReadCount(I)V
    .locals 0
    .param p1, "unReadCount"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->unReadCount:I

    .line 93
    return-void
.end method

.method public setbRead(Z)V
    .locals 0
    .param p1, "bRead"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->bRead:Z

    .line 61
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "clientParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->action:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v3, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "strApps":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const-string/jumbo v3, "apps"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v3, "LogCollecterRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadUnReadLog | apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-boolean v3, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->bRead:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v2, "1"

    .line 121
    .local v2, "strRead":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "read"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v3, "read_count"

    iget v4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->readCount:I

    .line 124
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v3, "unread_count"

    iget v4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->unReadCount:I

    .line 126
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v3, "broadcast_count"

    iget v4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->broadcastCount:I

    .line 128
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v3, "dbchange_read_count"

    iget v4, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->dbChangeCount:I

    .line 130
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-object v0

    .line 120
    .end local v2    # "strRead":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->apps2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "strApps":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmsItem [action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", apps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bRead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->bRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", readCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->readCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", unReadCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->unReadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", broadcastCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->broadcastCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dbChangeCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/adaptation/logcollect/LogCollecterRequest;->dbChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
