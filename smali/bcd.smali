.class public abstract Lbcd;
.super Ljava/lang/Object;
.source "BaseDiscCache.java"

# interfaces
.implements Lbce;


# instance fields
.field protected a:Ljava/io/File;

.field private b:Lbcj;


# direct methods
.method public constructor <init>(Ljava/io/File;Lbcj;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lbcj;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lbcd;->a:Ljava/io/File;

    .line 43
    iput-object p2, p0, Lbcd;->b:Lbcj;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lbcd;->b:Lbcj;

    invoke-interface {v1, p1}, Lbcj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lbcd;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
