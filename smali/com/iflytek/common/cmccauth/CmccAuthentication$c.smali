.class Lcom/iflytek/common/cmccauth/CmccAuthentication$c;
.super Ljava/lang/Object;
.source "CmccAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/CmccAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public c:I

.field public d:Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

.field final synthetic e:Lcom/iflytek/common/cmccauth/CmccAuthentication;

.field private f:I


# direct methods
.method private constructor <init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->e:Lcom/iflytek/common/cmccauth/CmccAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;Lcom/iflytek/common/cmccauth/CmccAuthentication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication;
    .param p2, "x1"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;-><init>(Lcom/iflytek/common/cmccauth/CmccAuthentication;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$c;

    .prologue
    .line 572
    iget v0, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->f:I

    return v0
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/CmccAuthentication$c;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/CmccAuthentication$c;
    .param p1, "x1"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/iflytek/common/cmccauth/CmccAuthentication$c;->f:I

    return p1
.end method
