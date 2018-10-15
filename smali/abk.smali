.class public Labk;
.super Ljava/lang/Object;
.source "BlessContentChangeBusiness.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Labk;

.field private static g:Ljava/lang/String;


# instance fields
.field private b:Labl;

.field private d:Z

.field private e:Landroid/content/Context;

.field private final f:Ljava/lang/Object;

.field private h:Z

.field private i:Lwd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Labk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labk;->a:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    sput-object v0, Labk;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Labk;->d:Z

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labk;->f:Ljava/lang/Object;

    .line 21
    iput-boolean v1, p0, Labk;->h:Z

    .line 23
    new-instance v0, Labk$1;

    invoke-direct {v0, p0}, Labk$1;-><init>(Labk;)V

    iput-object v0, p0, Labk;->i:Lwd;

    .line 70
    iput-object p1, p0, Labk;->e:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Labk;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Labk;->b(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static a()Labk;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Labk;->c:Labk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Labk;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string/jumbo v0, ""

    sput-object v0, Labk;->g:Ljava/lang/String;

    .line 76
    sget-object v0, Labk;->c:Labk;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Labk;

    invoke-direct {v0, p0}, Labk;-><init>(Landroid/content/Context;)V

    sput-object v0, Labk;->c:Labk;

    .line 79
    :cond_0
    sget-object v0, Labk;->c:Labk;

    return-object v0
.end method

.method static synthetic a(Labk;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Labk;

    .prologue
    .line 13
    iget-object v0, p0, Labk;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    sput-object p0, Labk;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Labk;Z)Z
    .locals 0
    .param p0, "x0"    # Labk;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Labk;->d:Z

    return p1
.end method

.method static synthetic b(Labk;)Z
    .locals 1
    .param p0, "x0"    # Labk;

    .prologue
    .line 13
    iget-boolean v0, p0, Labk;->h:Z

    return v0
.end method

.method static synthetic c(Labk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Labk;

    .prologue
    .line 13
    iget-object v0, p0, Labk;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Labk;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 2
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "categoryname"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Labk;->b:Labl;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Labk;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Labk;->b(Landroid/content/Context;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Labk;->d:Z

    .line 96
    iput-boolean p4, p0, Labk;->h:Z

    .line 97
    iget-object v0, p0, Labk;->b:Labl;

    sget-object v1, Labk;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Labl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Labk;->b:Labl;

    if-eqz v0, :cond_0

    .line 103
    iget-boolean v0, p0, Labk;->d:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Labk;->b:Labl;

    invoke-virtual {v0}, Labl;->cancelRequest()V

    .line 107
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Labl;

    iget-object v1, p0, Labk;->i:Lwd;

    invoke-direct {v0, p1, v1}, Labl;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Labk;->b:Labl;

    .line 88
    return-void
.end method
