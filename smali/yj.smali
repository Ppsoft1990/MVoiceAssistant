.class public Lyj;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Lcom/iflytek/yd/business/OperationInfo;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/common/adaptation/entity/SimCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lyj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 71
    iput-object p1, p0, Lyj;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lyj;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lyj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenStatus"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lyj;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lyj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lyj;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lyj;->e:Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "validDays"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lyj;->c:Ljava/lang/String;

    .line 64
    return-void
.end method
