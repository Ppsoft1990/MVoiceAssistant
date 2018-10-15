.class Lox;
.super Ljava/lang/Object;
.source "PermissionSql.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lox;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "appPriority"    # I

    .prologue
    .line 69
    iput p1, p0, Lox;->e:I

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lox;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lox;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lox;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lox;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lox;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lox;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lox;->d:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lox;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionInfo"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lox;->f:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lox;->e:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lox;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lox;->g:Ljava/lang/String;

    return-object v0
.end method
