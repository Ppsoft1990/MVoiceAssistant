.class Lmy$1;
.super Ljava/lang/Object;
.source "AuthBlcHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmy;


# direct methods
.method constructor <init>(Lmy;)V
    .locals 0
    .param p1, "this$0"    # Lmy;

    .prologue
    .line 117
    iput-object p1, p0, Lmy$1;->a:Lmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 121
    const-string/jumbo v2, "AuthBlcHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "requestType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v2, 0x1b

    if-ne v2, p5, :cond_3

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "info":Lyj;
    const-string/jumbo v2, "AuthBlcHelper"

    const-string/jumbo v3, "operation type is get token"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-nez p2, :cond_2

    .line 126
    new-instance v0, Lyj;

    .end local v0    # "info":Lyj;
    invoke-direct {v0}, Lyj;-><init>()V

    .line 127
    .restart local v0    # "info":Lyj;
    const-string/jumbo v2, "getagain"

    invoke-virtual {v0, v2}, Lyj;->b(Ljava/lang/String;)V

    .line 132
    :goto_0
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 133
    .local v1, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->a(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->a(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->a(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    check-cast v1, Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 136
    .restart local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_0
    invoke-virtual {v0, v1}, Lyj;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 137
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->b(Lmy;)Lnf;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->b(Lmy;)Lnf;

    move-result-object v2

    invoke-interface {v2, p5, v0, p1}, Lnf;->a(ILyj;I)V

    .line 161
    .end local v0    # "info":Lyj;
    .end local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "info":Lyj;
    :cond_2
    move-object v0, p2

    .line 129
    check-cast v0, Lyj;

    goto :goto_0

    .line 140
    .end local v0    # "info":Lyj;
    :cond_3
    const/16 v2, 0x24

    if-ne v2, p5, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 142
    .restart local v0    # "info":Lyj;
    if-nez p2, :cond_5

    .line 143
    const-string/jumbo v2, "AuthBlcHelper"

    const-string/jumbo v3, "get token by net result is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lyj;

    .end local v0    # "info":Lyj;
    invoke-direct {v0}, Lyj;-><init>()V

    .line 145
    .restart local v0    # "info":Lyj;
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lyj;->b(Ljava/lang/String;)V

    .line 151
    :goto_2
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 152
    .restart local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->c(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmy$1;->a:Lmy;

    .line 153
    invoke-static {v2}, Lmy;->c(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->c(Lmy;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    check-cast v1, Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 156
    .restart local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_4
    invoke-virtual {v0, v1}, Lyj;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 157
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->d(Lmy;)Lne;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lmy$1;->a:Lmy;

    invoke-static {v2}, Lmy;->d(Lmy;)Lne;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lne;->a(Lyj;I)V

    goto :goto_1

    .end local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_5
    move-object v0, p2

    .line 148
    check-cast v0, Lyj;

    goto :goto_2
.end method
