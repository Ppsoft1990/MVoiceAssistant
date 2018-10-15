.class Lauf$a;
.super Ljava/lang/Object;
.source "LxReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lauf;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lauf;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lauf;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lauf$a;->a:Lauf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lauf$a;->d:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p3, p0, Lauf$a;->b:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lauf$a;->c:J

    .line 132
    return-void
.end method

.method static synthetic a(Lauf$a;)J
    .locals 2
    .param p0, "x0"    # Lauf$a;

    .prologue
    .line 123
    iget-wide v0, p0, Lauf$a;->c:J

    return-wide v0
.end method

.method static synthetic a(Lauf$a;J)J
    .locals 1
    .param p0, "x0"    # Lauf$a;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lauf$a;->c:J

    return-wide p1
.end method
