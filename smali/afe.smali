.class public Lafe;
.super Ljava/lang/Object;
.source "DialogTitle.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMainTitle"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lafe;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSubTitle"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lafe;->b:Ljava/lang/String;

    .line 27
    return-void
.end method
