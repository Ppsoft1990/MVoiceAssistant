.class Lcom/iflytek/common/cmccauth/CmccAuthentication$b;
.super Ljava/lang/Object;
.source "CmccAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/CmccAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lcom/iflytek/common/cmccauth/CmccAuthentication;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/iflytek/common/cmccauth/CmccAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V

    sput-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$b;->a:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    return-void
.end method
