.class public Lyh;
.super Ljava/lang/Object;
.source "NetworkSkinInfoItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 26
    iput p1, p0, Lyh;->a:I

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lyh;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lyh;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lyh;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lyh;->e:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lyh;->f:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lyh;->g:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lyh;->h:Ljava/lang/String;

    .line 83
    return-void
.end method
