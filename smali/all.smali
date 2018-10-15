.class public Lall;
.super Ljava/lang/Object;
.source "NewsModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "site"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "publishTime"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lall;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lall;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lall;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lall;->d:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lall;->e:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lall;->f:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lall;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lall;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lall;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lall;->c:Ljava/lang/String;

    return-object v0
.end method
