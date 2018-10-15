.class public Laqq;
.super Ljava/lang/Object;
.source "SohuNewsBusiness.java"


# instance fields
.field private a:Laqp;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lwd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lwd;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Laqp;

    invoke-direct {v0, p1, p2}, Laqp;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Laqq;->a:Laqp;

    .line 14
    return-void
.end method

.method public static a(Landroid/content/Context;Lwd;)Laqq;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lwd;

    .prologue
    .line 17
    new-instance v0, Laqq;

    invoke-direct {v0, p0, p1}, Laqq;-><init>(Landroid/content/Context;Lwd;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "newsId"    # Ljava/lang/String;
    .param p2, "dataSrcId"    # Ljava/lang/String;
    .param p3, "dataSrcName"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Laqq;->a:Laqp;

    invoke-virtual {v0, p1, p2, p3}, Laqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Laqq;->a:Laqp;

    invoke-virtual {v0}, Laqp;->cancelRequest()V

    .line 29
    return-void
.end method
