.class public Lcom/migu/voiceads/utils/c/t;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/migu/voiceads/utils/j$a;

.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:Lorg/json/JSONArray;

.field private g:Lcom/migu/voiceads/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/voiceads/utils/c/u;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/c/u;-><init>(Lcom/migu/voiceads/utils/c/t;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/t;->a:Lcom/migu/voiceads/utils/j$a;

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/c/t;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic c(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic d(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic e(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->f:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic f(Lcom/migu/voiceads/utils/c/t;)Lcom/migu/voiceads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/t;->g:Lcom/migu/voiceads/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/migu/voiceads/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->g:Lcom/migu/voiceads/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/migu/voiceads/utils/j;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/j;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/j;->b(I)V

    invoke-virtual {v0, p1, v2, v2}, Lcom/migu/voiceads/utils/j;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/t;->a:Lcom/migu/voiceads/utils/j$a;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/j;->a(Lcom/migu/voiceads/utils/j$a;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->c:Lorg/json/JSONArray;

    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->d:Lorg/json/JSONArray;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public d(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/t;->f:Lorg/json/JSONArray;

    return-void
.end method
