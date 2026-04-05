package com.picacomic.fregata.holders;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.picacomic.fregata.databinding.ItemNotificationCellBinding;
import com.picacomic.fregata.R;
import com.picacomic.fregata.a_pkg.h;
import com.picacomic.fregata.objects.NotificationObject;
import com.picacomic.fregata.utils.PicassoTransformations;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class NotificationViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    public static final String TAG = "NotificationViewHolder";
    Context context;

    ItemNotificationCellBinding binding;
    public ImageView imageView_avatar;
    public ImageView imageView_character;
    public ImageView imageView_image;
    h jN;
    NotificationObject sV;
    public TextView textView_content;
    public TextView textView_timestamp;

    public NotificationViewHolder(Context context, View view, h hVar) {
        super(view);
        this.binding = ItemNotificationCellBinding.bind(view);
        this.imageView_avatar = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_avatar);
        this.imageView_character = view.findViewById(R.id.imageView_chatroom_recycler_view_cell_verified);
        this.imageView_image = view.findViewById(R.id.imageView_notification_image);
        this.textView_content = view.findViewById(R.id.textView_notification_content);
        this.textView_timestamp = view.findViewById(R.id.textView_notification_timestamp);
        this.context = context;
        this.jN = hVar;
        this.imageView_avatar.setOnClickListener(this);
        this.imageView_image.setOnClickListener(this);
        this.imageView_character.setOnClickListener(this);
        view.setOnClickListener(this);
    }

    public void a(NotificationObject notificationObject) {
        this.sV = notificationObject;
        if (this.sV != null) {
            if (this.sV.getSender() != null) {
                if (this.sV.getSender().getCharacter() != null && !this.sV.getSender().getCharacter().equalsIgnoreCase("")) {
                    Picasso.with(this.context).load(this.sV.getSender().getCharacter()).into(this.imageView_character);
                    this.imageView_character.setVisibility(0);
                } else {
                    this.imageView_character.setVisibility(8);
                }
                Picasso.with(this.context).load(g.b(this.sV.getSender().getAvatar())).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_avatar);
            }
            if (this.sV.getCover() != null) {
                Picasso.with(this.context).load(g.b(this.sV.getCover())).transform(PicassoTransformations.SMALL_COVER).placeholder(R.drawable.placeholder_avatar_2).into(this.imageView_image);
                f.F(TAG, g.b(this.sV.getCover()));
                this.imageView_image.setVisibility(0);
            } else {
                this.imageView_image.setVisibility(8);
            }
            this.textView_content.setText(this.sV.getContent() + "");
            this.textView_timestamp.setText(g.B(this.context, this.sV.getCreatedAt()));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.jN != null) {
            if (view == this.imageView_image) {
                this.jN.Y(getAdapterPosition());
            } else if (view == this.imageView_avatar || view == this.imageView_character) {
                this.jN.X(getAdapterPosition());
            } else {
                this.jN.W(getAdapterPosition());
            }
        }
    }
}
