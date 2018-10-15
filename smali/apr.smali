.class public Lapr;
.super Ljava/lang/Object;
.source "MusicCacheSettings.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUID"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lapr;->c:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrivateUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lapr;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPublicUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lapr;->a:Ljava/lang/String;

    .line 24
    return-void
.end method
