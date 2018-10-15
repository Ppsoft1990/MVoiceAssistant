.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2091
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 2111
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 2112
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2113
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2114
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2115
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 2119
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2120
    iput p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2121
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2122
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2097
    iput v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2098
    iput v4, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2099
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2100
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$902(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2102
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1102(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2105
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    .line 2108
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2126
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2160
    :goto_0
    return-void

    .line 2128
    :pswitch_0
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2130
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$902(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2131
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2134
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1102(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2135
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2140
    :pswitch_3
    iget v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2142
    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2144
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2143
    invoke-virtual {v0, p0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$900(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$902(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2147
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2150
    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .line 2152
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2151
    invoke-virtual {v0, p0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2154
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1102(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2155
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$PressedStateHelper;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2128
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2140
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
