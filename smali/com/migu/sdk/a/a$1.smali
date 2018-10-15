.class Lcom/migu/sdk/a/a$1;
.super Ljava/lang/Object;
.source "MiguMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/migu/sdk/a/a;->initializeApp(Landroid/content/Context;Lcom/migu/sdk/api/InitInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic k:Lcom/migu/sdk/b/a;


# direct methods
.method constructor <init>(Lcom/migu/sdk/b/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/migu/sdk/a/a$1;->k:Lcom/migu/sdk/b/a;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/migu/sdk/a/a$1;->k:Lcom/migu/sdk/b/a;

    invoke-virtual {v0}, Lcom/migu/sdk/b/a;->C()V

    .line 50
    return-void
.end method
