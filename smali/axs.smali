.class public Laxs;
.super Ljava/lang/Object;
.source "PicRecognizeResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Rect;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Laxs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mBorder"    # Landroid/graphics/Rect;

    .prologue
    .line 31
    iput-object p1, p0, Laxs;->b:Landroid/graphics/Rect;

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mResult"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Laxs;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mSelected"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Laxs;->c:Z

    .line 40
    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laxs;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Laxs;->c:Z

    return v0
.end method
