.class public Lda$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lda$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lda$a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lda$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lda$a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lda;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lda$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lda$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u5317\u4eac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    const-string/jumbo v2, "\u5317\u4eac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0a\u6d77"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0a\u6d77"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u5929\u6d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    const-string/jumbo v2, "\u5929\u6d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lda$a;->c:Ljava/lang/String;

    const-string/jumbo v2, "\u91cd\u5e86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    const-string/jumbo v2, "\u91cd\u5e86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lda$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lda$a;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lda$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v1, p0, Lda$a;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lda$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v1, p0, Lda$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lda$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lda$a;->i:Ljava/lang/String;

    :cond_a
    new-instance v0, Lda;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lda;-><init>(Lda$a;Lda$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lda$a;
    .locals 0

    iput-object p1, p0, Lda$a;->h:Ljava/lang/String;

    return-object p0
.end method
