.class Lagx$1;
.super Ljava/lang/Object;
.source "HomeCmccAuthenHelper.java"

# interfaces
.implements Lnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagx;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagx;


# direct methods
.method constructor <init>(Lagx;)V
    .locals 0
    .param p1, "this$0"    # Lagx;

    .prologue
    .line 47
    iput-object p1, p0, Lagx$1;->a:Lagx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 56
    const-string/jumbo v0, "HomeCmccAuthenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 51
    const-string/jumbo v0, "HomeCmccAuthenHelper"

    const-string/jumbo v1, "onAuthResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
