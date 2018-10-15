.class Lex$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lex;


# direct methods
.method private constructor <init>(Lex;)V
    .locals 0

    iput-object p1, p0, Lex$a;->a:Lex;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lex;Lex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lex$a;-><init>(Lex;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lex$a;->a:Lex;

    iget-object v0, v0, Lex;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lex$a;->a:Lex;

    invoke-static {v0}, Lex;->c(Lex;)V

    goto :goto_0
.end method
