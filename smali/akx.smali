.class public Lakx;
.super Ljava/lang/Object;
.source "ListenModel.java"


# instance fields
.field private a:Ljava/lang/String;

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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "reader"    # Ljava/lang/String;
    .param p5, "coverPic"    # Ljava/lang/String;
    .param p6, "chapterId"    # Ljava/lang/String;
    .param p7, "detailurl"    # Ljava/lang/String;
    .param p8, "longdesc"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lakx;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lakx;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lakx;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lakx;->d:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lakx;->e:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lakx;->f:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lakx;->g:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lakx;->h:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lakx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lakx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lakx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lakx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lakx;->h:Ljava/lang/String;

    return-object v0
.end method
