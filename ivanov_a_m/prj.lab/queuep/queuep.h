#pragma once
#include<memory>

class QueueP {
public:
	QueueP() = default;
	QueueP(const QueueP& copy);
	QueueP(QueueP&& right) noexcept;
	QueueP& operator=(const QueueP& right);
	QueueP& operator=(QueueP&& right) noexcept;
	~QueueP();
	void push(const int& elem);
	void pop();
	const int& top() const;
	bool isEmpty() const;
private:
	class Node {
	public:
		Node() = default;
		Node(const int& elem);
		Node(const int& elem, std::unique_ptr<Node>& next);
		~Node();
		int value;
		std::unique_ptr<Node> next_node;

	};
	std::unique_ptr<Node> head;
};

