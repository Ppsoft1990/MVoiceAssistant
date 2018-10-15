.class Lbfe$a;
.super Lbeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Z

.field c:Ljava/lang/String;

.field d:[B

.field h:Ljava/lang/String;

.field i:Lorg/json/JSONArray;

.field final synthetic j:Lbfe;


# direct methods
.method private constructor <init>(Lbfe;)V
    .locals 0

    iput-object p1, p0, Lbfe$a;->j:Lbfe;

    invoke-direct {p0}, Lbeg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbfe;Lbfe$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfe$a;-><init>(Lbfe;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    invoke-virtual {p0}, Lbfe$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lbfe$a;->b:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v0

    invoke-virtual {v0}, Lbec;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfe$a;->h:Ljava/lang/String;

    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v0

    invoke-virtual {v0}, Lbec;->b()[B

    move-result-object v0

    iput-object v0, p0, Lbfe$a;->d:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lbfe$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfe$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lbeu;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lbfe$a;->i:Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
