.class public Lxy;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "AboutInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lxy;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lxy;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lxy;->c:Ljava/lang/String;

    .line 38
    return-void
.end method
