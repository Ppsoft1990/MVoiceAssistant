.class public Lamo$a;
.super Ljava/lang/Object;
.source "BookMarkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bookmarkid"    # Ljava/lang/String;
    .param p2, "chapterid"    # Ljava/lang/String;
    .param p3, "chaptername"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lamo$a;->a:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lamo$a;->b:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lamo$a;->c:Ljava/lang/String;

    .line 140
    iput p4, p0, Lamo$a;->d:I

    .line 141
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lamo$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "chaptername"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lamo$a;->c:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lamo$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "addTime"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lamo$a;->e:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lamo$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lamo$a;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lamo$a;->e:Ljava/lang/String;

    return-object v0
.end method
